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

if(TINT_BUILD_IR)
tint_add_target("lang/wgsl/writer/ir_to_program"
  lang/wgsl/writer/ir_to_program/ir_to_program.cc
  lang/wgsl/writer/ir_to_program/ir_to_program.h
  lang/wgsl/writer/ir_to_program/rename_conflicts.cc
  lang/wgsl/writer/ir_to_program/rename_conflicts.h
)

tint_target_add_dependencies("lang/wgsl/writer/ir_to_program"
  "lang/core"
  "lang/core/constant"
  "lang/core/type"
  "lang/wgsl/program"
  "lang/wgsl/resolver"
  "utils/containers"
  "utils/macros"
  "utils/math"
  "utils/result"
  "utils/rtti"
  "utils/text"
)

if (TINT_BUILD_IR)
  tint_target_add_dependencies("lang/wgsl/writer/ir_to_program"
    "lang/core/ir"
  )
endif(TINT_BUILD_IR)

endif(TINT_BUILD_IR)
if(TINT_BUILD_IR)
tint_add_target("lang/wgsl/writer/ir_to_program:test"
  lang/wgsl/writer/ir_to_program/inlining_test.cc
  lang/wgsl/writer/ir_to_program/ir_to_program_test.cc
  lang/wgsl/writer/ir_to_program/ir_to_program_test.h
  lang/wgsl/writer/ir_to_program/rename_conflicts_test.cc
)

tint_target_add_dependencies("lang/wgsl/writer/ir_to_program:test"
  "lang/core/type"
  "lang/wgsl/writer"
  "utils/text"
)

if (TINT_BUILD_IR)
  tint_target_add_dependencies("lang/wgsl/writer/ir_to_program:test"
    "lang/core/ir"
    "lang/core/ir:test"
    "lang/wgsl/writer/ir_to_program"
  )
endif(TINT_BUILD_IR)

endif(TINT_BUILD_IR)