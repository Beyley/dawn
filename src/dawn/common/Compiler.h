// Copyright 2017 The Dawn & Tint Authors
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its
//    contributors may be used to endorse or promote products derived from
//    this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#ifndef SRC_DAWN_COMMON_COMPILER_H_
#define SRC_DAWN_COMMON_COMPILER_H_

// Defines macros for compiler-specific functionality

// DAWN_COMPILER_IS(CLANG|GCC|MSVC): Compiler detection
//
// Note: clang masquerades as GCC on POSIX and as MSVC on Windows. It must be checked first.
#if defined(__clang__)
#define DAWN_COMPILER_IS_CLANG 1
#define DAWN_COMPILER_IS_GCC 0
#define DAWN_COMPILER_IS_MSVC 0
#elif defined(__GNUC__)
#define DAWN_COMPILER_IS_CLANG 0
#define DAWN_COMPILER_IS_GCC 1
#define DAWN_COMPILER_IS_MSVC 0
#elif defined(_MSC_VER)
#define DAWN_COMPILER_IS_CLANG 0
#define DAWN_COMPILER_IS_GCC 0
#define DAWN_COMPILER_IS_MSVC 1
#else
#error "Unsupported compiler"
#endif

// Use #if DAWN_COMPILER_IS(XXX) for compiler specific code.
// Do not use #ifdef or the naked macro DAWN_COMPILER_IS_XXX.
// This can help avoid common mistakes like not including "Compiler.h" and falling into unwanted
// code block as usage of undefined macro "function" will be blocked by the compiler.
#define DAWN_COMPILER_IS(X) (1 == DAWN_COMPILER_IS_##X)

// DAWN_HAS_ATTRIBUTE
//
// A wrapper around `__has_attribute`. This test whether its operand is recognized by the compiler.
#if defined(__has_attribute)
#define DAWN_HAS_ATTRIBUTE(x) __has_attribute(x)
#else
#define DAWN_HAS_ATTRIBUTE(x) 0
#endif

// DAWN_BUILTIN_UNREACHABLE()
//
// Hints the compiler that a code path is unreachable.
#if DAWN_COMPILER_IS(MSVC)
#define DAWN_BUILTIN_UNREACHABLE() __assume(false)
#else
#define DAWN_BUILTIN_UNREACHABLE() __builtin_unreachable()
#endif

// DAWN_LIKELY(EXPR)
//
// Where available, hints the compiler that the expression will be true to help it generate code
// that leads to better branch prediction.
#if DAWN_COMPILER_IS(GCC) || DAWN_COMPILER_IS(CLANG)
#define DAWN_LIKELY(x) __builtin_expect(!!(x), 1)
#else
#define DAWN_LIKELY(x) (x)
#endif

// DAWN_UNLIKELY(EXPR)
//
// Where available, hints the compiler that the expression will be false to help it generate code
// that leads to better branch prediction.
#if DAWN_COMPILER_IS(GCC) || DAWN_COMPILER_IS(CLANG)
#define DAWN_UNLIKELY(x) __builtin_expect(!!(x), 0)
#else
#define DAWN_UNLIKELY(x) (x)
#endif

// DAWN_DECLARE_UNUSED
//
// Prevents unused function warnings a subsequent declaration.
#if DAWN_COMPILER_IS(GCC) || DAWN_COMPILER_IS(CLANG)
#define DAWN_DECLARE_UNUSED __attribute__((unused))
#else
#define DAWN_DECLARE_UNUSED
#endif

// DAWN_NO_SANITIZE(instrumentation)
//
// Annotate a function or a global variable declaration to specify that a particular instrumentation
// or set of instrumentations should not be applied.
#if DAWN_HAS_ATTRIBUTE(no_sanitize)
#define DAWN_NO_SANITIZE(instrumentation) __attribute__((no_sanitize(instrumentation)))
#else
#define DAWN_NO_SANITIZE(instrumentation)
#endif

// DAWN_UNUSED
//
// Prevents unused variable/expression warnings on EXPR.
#define DAWN_UNUSED(EXPR) (void)EXPR

// DAWN_UNUSED_FUNC
//
// Prevents unused variable/expression warnings on FUNC.
#define DAWN_UNUSED_FUNC(FUNC) static_assert(sizeof(&FUNC) == sizeof(void (*)()))

// DAWN_NOINLINE
//
// Annotate a function indicating it should not be inlined. Use like:
// DAWN_NOINLINE void DoStuff() { ... }
#if defined(__clang__) && DAWN_HAS_ATTRIBUTE(noinline)
#define DAWN_NOINLINE [[clang::noinline]]
#elif defined(__GNUC__) && DAWN_HAS_ATTRIBUTE(noinline)
#define DAWN_NOINLINE __attribute__((noinline))
#elif defined(_MSC_VER)
#define DAWN_NOINLINE __declspec(noinline)
#else
#define DAWN_NOINLINE
#endif

// DAWN_FORCE_INLINE
//
// Annotate a function indicating it should really never be inline, even in debug mode.
#if DAWN_COMPILER_IS(CLANG) && defined(NDEBUG) && DAWN_HAS_ATTRIBUTE(always_inline)
#define DAWN_FORCE_INLINE [[clang::always_inline]] inline
#elif DAWN_COMPILER_IS(GCC) && defined(NDEBUG) && DAWN_HAS_ATTRIBUTE(always_inline)
#define DAWN_FORCE_INLINE inline __attribute__((__always_inline__))
#elif DAWN_COMPILER_IS(MSVC) && defined(NDEBUG)
#define DAWN_FORCE_INLINE __forceinline
#else
#define DAWN_FORCE_INLINE inline
#endif

// DAWN_TRIVIAL_ABI
//
// Marks a type as being eligible for the "trivial" ABI despite having a
// non-trivial destructor or copy/move constructor. Such types can be relocated
// after construction by simply copying their memory, which makes them eligible
// to be passed in registers. The canonical example is std::unique_ptr.
//
// Use with caution; this has some subtle effects on constructor/destructor
// ordering and will be very incorrect if the type relies on its address
// remaining constant. When used as a function argument (by value), the value
// may be constructed in the caller's stack frame, passed in a register, and
// then used and destructed in the callee's stack frame. A similar thing can
// occur when values are returned.
//
// TRIVIAL_ABI is not needed for types which have a trivial destructor and
// copy/move constructors, such as base::TimeTicks and other POD.
//
// It is also not likely to be effective on types too large to be passed in one
// or two registers on typical target ABIs.
//
// See also:
//   https://clang.llvm.org/docs/AttributeReference.html#trivial-abi
//   https://libcxx.llvm.org/docs/DesignDocs/UniquePtrTrivialAbi.html
#if DAWN_COMPILER_IS(CLANG) && DAWN_HAS_ATTRIBUTE(trivial_abi)
#define DAWN_TRIVIAL_ABI [[clang::trivial_abi]]
#else
#define DAWN_TRIVIAL_ABI
#endif

// DAWN_CONSTINIT
//
// Requires constant initialization. See constinit in C++20. Allows to rely on a variable being
// initialized before execution, and not requiring a global constructor.
#if DAWN_HAS_ATTRIBUTE(require_constant_initialization)
#define DAWN_CONSTINIT __attribute__((require_constant_initialization))
#else
#define DAWN_CONSTINIT
#endif

// DAWN_GSL_POINTER
//
// In [lifetime safety], If you write a custom class wrapping a pointer, the [[gsl::Owner]] and
// [[gsl::Pointer]] can help the compiler to know if it acquired ownership over the pointee, or not.
// The compiler is then able to emit useful warning.
//
// [lifetime safety]: https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p1179r0.pdf
#if DAWN_COMPILER_IS(CLANG)
#define DAWN_GSL_POINTER [[gsl::Pointer]]
#else
#define DAWN_GSL_POINTER
#endif

// DAWN_CONSTEXPR_DTOR
//
// Constexpr destructors were introduced in C++20. Dawn's minimum supported C++ version is C++17.
#if defined(__cpp_constexpr) && __cpp_constexpr >= 201907L
#define DAWN_CONSTEXPR_DTOR constexpr
#else
#define DAWN_CONSTEXPR_DTOR
#endif

// DAWN_ATTRIBUTE_RETURNS_NONNULL
//
// Tells the compiler that a function never returns a null pointer. Sourced from Abseil's
// `attributes.h`.
#if DAWN_HAS_ATTRIBUTE(returns_nonnull)
#define DAWN_ATTRIBUTE_RETURNS_NONNULL __attribute__((returns_nonnull))
#else
#define DAWN_ATTRIBUTE_RETURNS_NONNULL
#endif

#endif  // SRC_DAWN_COMMON_COMPILER_H_
