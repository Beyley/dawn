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

////////////////////////////////////////////////////////////////////////////////
// File generated by tools/src/cmd/gen
// using the template:
//   src/tint/ast/extension_test.cc.tmpl
//
// Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

#include "src/tint/ast/extension.h"

#include <string>

#include "src/tint/ast/test_helper.h"
#include "src/tint/utils/string.h"

namespace tint::ast {
namespace {

namespace parse_print_tests {

struct Case {
    const char* string;
    Extension value;
};

inline std::ostream& operator<<(std::ostream& out, Case c) {
    return out << "'" << std::string(c.string) << "'";
}

static constexpr Case kValidCases[] = {
    {"chromium_disable_uniformity_analysis", Extension::kChromiumDisableUniformityAnalysis},
    {"chromium_experimental_dp4a", Extension::kChromiumExperimentalDp4A},
    {"chromium_experimental_push_constant", Extension::kChromiumExperimentalPushConstant},
    {"f16", Extension::kF16},
};

static constexpr Case kInvalidCases[] = {
    {"chromium_disableuniformiccy_analysis", Extension::kUndefined},
    {"chromil3_disable_unifority_analss", Extension::kUndefined},
    {"chromium_disable_Vniformity_analysis", Extension::kUndefined},
    {"chro1ium_experimental_dp4a", Extension::kUndefined},
    {"chrJmium_experiqqetal_dp4a", Extension::kUndefined},
    {"chromium_experimenll77l_dp4a", Extension::kUndefined},
    {"cppromium_experiHHenal_qqush_constant", Extension::kUndefined},
    {"chromium_xpericental_sh_vonstant", Extension::kUndefined},
    {"chromium_experimental_Gsh_cbnstant", Extension::kUndefined},
    {"f1vi", Extension::kUndefined},
    {"f8WW", Extension::kUndefined},
    {"fxx", Extension::kUndefined},
};

using ExtensionParseTest = testing::TestWithParam<Case>;

TEST_P(ExtensionParseTest, Parse) {
    const char* string = GetParam().string;
    Extension expect = GetParam().value;
    EXPECT_EQ(expect, ParseExtension(string));
}

INSTANTIATE_TEST_SUITE_P(ValidCases, ExtensionParseTest, testing::ValuesIn(kValidCases));
INSTANTIATE_TEST_SUITE_P(InvalidCases, ExtensionParseTest, testing::ValuesIn(kInvalidCases));

using ExtensionPrintTest = testing::TestWithParam<Case>;

TEST_P(ExtensionPrintTest, Print) {
    Extension value = GetParam().value;
    const char* expect = GetParam().string;
    EXPECT_EQ(expect, utils::ToString(value));
}

INSTANTIATE_TEST_SUITE_P(ValidCases, ExtensionPrintTest, testing::ValuesIn(kValidCases));

}  // namespace parse_print_tests

}  // namespace
}  // namespace tint::ast
