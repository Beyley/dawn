# Copyright 2023 The Tint Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

################################################################################
# File generated by tools/src/cmd/gen
# using the template:
#   tools/src/cmd/gen/build/BUILD.cmake.tmpl
#
# Do not modify this file directly
################################################################################

include(lang/core/intrinsic/data/BUILD.cmake)

tint_add_target("lang/core/intrinsic"
  lang/core/intrinsic/ctor_conv.cc
  lang/core/intrinsic/ctor_conv.h
  lang/core/intrinsic/table.cc
  lang/core/intrinsic/table.h
  lang/core/intrinsic/table_data.h
)

tint_target_add_dependencies("lang/core/intrinsic"
  "lang/core"
  "lang/core/constant"
  "lang/core/type"
  "utils/containers"
  "utils/diagnostic"
  "utils/macros"
  "utils/math"
  "utils/rtti"
  "utils/text"
)

tint_add_target("lang/core/intrinsic:test"
  lang/core/intrinsic/table_test.cc
)

tint_target_add_dependencies("lang/core/intrinsic:test"
  "lang/core/intrinsic"
  "lang/core/intrinsic/data"
  "lang/core/type"
  "lang/core/type:test"
  "lang/wgsl/resolver:test"
  "lang/wgsl/sem"
)