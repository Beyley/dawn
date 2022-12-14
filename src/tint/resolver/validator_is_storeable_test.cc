// Copyright 2021 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/tint/resolver/validator.h"

#include "gmock/gmock.h"
#include "src/tint/resolver/resolver_test_helper.h"
#include "src/tint/sem/atomic.h"

namespace tint::resolver {
namespace {

using ValidatorIsStorableTest = ResolverTest;

TEST_F(ValidatorIsStorableTest, Void) {
    EXPECT_FALSE(v()->IsStorable(create<sem::Void>()));
}

TEST_F(ValidatorIsStorableTest, Scalar) {
    EXPECT_TRUE(v()->IsStorable(create<sem::Bool>()));
    EXPECT_TRUE(v()->IsStorable(create<sem::I32>()));
    EXPECT_TRUE(v()->IsStorable(create<sem::U32>()));
    EXPECT_TRUE(v()->IsStorable(create<sem::F32>()));
    EXPECT_TRUE(v()->IsStorable(create<sem::F16>()));
}

TEST_F(ValidatorIsStorableTest, Vector) {
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::I32>(), 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::I32>(), 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::I32>(), 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::U32>(), 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::U32>(), 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::U32>(), 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::F32>(), 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::F32>(), 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::F32>(), 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::F16>(), 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::F16>(), 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Vector>(create<sem::F16>(), 4u)));
}

TEST_F(ValidatorIsStorableTest, Matrix) {
    auto* vec2_f32 = create<sem::Vector>(create<sem::F32>(), 2u);
    auto* vec3_f32 = create<sem::Vector>(create<sem::F32>(), 3u);
    auto* vec4_f32 = create<sem::Vector>(create<sem::F32>(), 4u);
    auto* vec2_f16 = create<sem::Vector>(create<sem::F16>(), 2u);
    auto* vec3_f16 = create<sem::Vector>(create<sem::F16>(), 3u);
    auto* vec4_f16 = create<sem::Vector>(create<sem::F16>(), 4u);
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec2_f32, 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec2_f32, 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec2_f32, 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec3_f32, 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec3_f32, 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec3_f32, 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec4_f32, 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec4_f32, 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec4_f32, 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec2_f16, 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec2_f16, 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec2_f16, 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec3_f16, 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec3_f16, 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec3_f16, 4u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec4_f16, 2u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec4_f16, 3u)));
    EXPECT_TRUE(v()->IsStorable(create<sem::Matrix>(vec4_f16, 4u)));
}

TEST_F(ValidatorIsStorableTest, Pointer) {
    auto* ptr = create<sem::Pointer>(create<sem::I32>(), ast::AddressSpace::kPrivate,
                                     ast::Access::kReadWrite);
    EXPECT_FALSE(v()->IsStorable(ptr));
}

TEST_F(ValidatorIsStorableTest, Atomic) {
    EXPECT_TRUE(v()->IsStorable(create<sem::Atomic>(create<sem::I32>())));
    EXPECT_TRUE(v()->IsStorable(create<sem::Atomic>(create<sem::U32>())));
}

TEST_F(ValidatorIsStorableTest, ArraySizedOfStorable) {
    auto* arr =
        create<sem::Array>(create<sem::I32>(), sem::ConstantArrayCount{5u}, 4u, 20u, 4u, 4u);
    EXPECT_TRUE(v()->IsStorable(arr));
}

TEST_F(ValidatorIsStorableTest, ArrayUnsizedOfStorable) {
    auto* arr = create<sem::Array>(create<sem::I32>(), sem::RuntimeArrayCount{}, 4u, 4u, 4u, 4u);
    EXPECT_TRUE(v()->IsStorable(arr));
}

}  // namespace
}  // namespace tint::resolver
