// Copyright 2022 The Tint Authors.
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
//   src/tint/lang/core/extension.cc.tmpl
//
// Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

#include "src/tint/lang/core/extension.h"

namespace tint::core {

/// ParseExtension parses a Extension from a string.
/// @param str the string to parse
/// @returns the parsed enum, or Extension::kUndefined if the string could not be parsed.
Extension ParseExtension(std::string_view str) {
    if (str == "chromium_disable_uniformity_analysis") {
        return Extension::kChromiumDisableUniformityAnalysis;
    }
    if (str == "chromium_experimental_dp4a") {
        return Extension::kChromiumExperimentalDp4A;
    }
    if (str == "chromium_experimental_full_ptr_parameters") {
        return Extension::kChromiumExperimentalFullPtrParameters;
    }
    if (str == "chromium_experimental_push_constant") {
        return Extension::kChromiumExperimentalPushConstant;
    }
    if (str == "chromium_experimental_read_write_storage_texture") {
        return Extension::kChromiumExperimentalReadWriteStorageTexture;
    }
    if (str == "chromium_experimental_subgroups") {
        return Extension::kChromiumExperimentalSubgroups;
    }
    if (str == "chromium_internal_dual_source_blending") {
        return Extension::kChromiumInternalDualSourceBlending;
    }
    if (str == "chromium_internal_relaxed_uniform_layout") {
        return Extension::kChromiumInternalRelaxedUniformLayout;
    }
    if (str == "f16") {
        return Extension::kF16;
    }
    return Extension::kUndefined;
}

std::string_view ToString(Extension value) {
    switch (value) {
        case Extension::kUndefined:
            return "undefined";
        case Extension::kChromiumDisableUniformityAnalysis:
            return "chromium_disable_uniformity_analysis";
        case Extension::kChromiumExperimentalDp4A:
            return "chromium_experimental_dp4a";
        case Extension::kChromiumExperimentalFullPtrParameters:
            return "chromium_experimental_full_ptr_parameters";
        case Extension::kChromiumExperimentalPushConstant:
            return "chromium_experimental_push_constant";
        case Extension::kChromiumExperimentalReadWriteStorageTexture:
            return "chromium_experimental_read_write_storage_texture";
        case Extension::kChromiumExperimentalSubgroups:
            return "chromium_experimental_subgroups";
        case Extension::kChromiumInternalDualSourceBlending:
            return "chromium_internal_dual_source_blending";
        case Extension::kChromiumInternalRelaxedUniformLayout:
            return "chromium_internal_relaxed_uniform_layout";
        case Extension::kF16:
            return "f16";
    }
    return "<unknown>";
}

}  // namespace tint::core