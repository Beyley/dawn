// Copyright 2024 The Dawn & Tint Authors
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

#ifndef SRC_TINT_LANG_WGSL_LS_FILE_H_
#define SRC_TINT_LANG_WGSL_LS_FILE_H_

#include <limits>
#include <memory>
#include <string>
#include <vector>

#include "src/tint/lang/wgsl/ast/node.h"
#include "src/tint/lang/wgsl/program/program.h"
#include "src/tint/utils/diagnostic/source.h"

namespace tint::wgsl::ls {

/// File represents an open language-server WGSL file ("document").
class File {
  public:
    /// The source file
    std::unique_ptr<Source::File> source;
    /// The current version of the file. Incremented with each change.
    int64_t version = 0;
    /// The parsed and resolved Program
    Program program;
    /// A source-ordered list of AST nodes.
    std::vector<const ast::Node*> nodes;

    /// Constructor
    File(std::unique_ptr<Source::File>&& source_, int64_t version_, Program program_);

    /// A structure holding source text and it's range in the file.
    struct TextAndRange {
        std::string text;
        Source::Range range;
    };

    /// @returns all the references to the symbol at the location @p l in the file.
    /// @param l the source location to lookup the symbol.
    /// @param include_declaration if true, the declaration of @p l will be included in the returned
    /// list.
    std::vector<Source::Range> References(Source::Location l, bool include_declaration);

    /// @returns the definition of the symbol at the location @p l in the file.
    std::optional<TextAndRange> Definition(Source::Location l);

    /// @returns the inner-most semantic node at the location @p l in the file.
    /// @tparam T the type or subtype of the node to scan for.
    template <typename T = sem::Node>
    const T* NodeAt(Source::Location l) const {
        // TODO(bclayton): This is a brute-force search. Optimize.
        size_t best_len = std::numeric_limits<uint32_t>::max();
        const T* best_node = nullptr;
        for (auto* node : nodes) {
            if (node->source.range.begin.line == node->source.range.end.line &&
                node->source.range.begin <= l && node->source.range.end >= l) {
                if (auto* sem =
                        As<T, CastFlags::kDontErrorOnImpossibleCast>(program.Sem().Get(node))) {
                    size_t len = node->source.range.end.column - node->source.range.begin.column;
                    if (len < best_len) {
                        best_len = len;
                        best_node = sem;
                    }
                }
            }
        }
        return best_node;
    }
};

}  // namespace tint::wgsl::ls

#endif  // SRC_TINT_LANG_WGSL_LS_FILE_H_
