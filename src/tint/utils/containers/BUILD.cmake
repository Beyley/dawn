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

tint_add_target("utils/containers"
  utils/containers/bitset.h
  utils/containers/containers.cc
  utils/containers/enum_set.h
  utils/containers/hashmap.h
  utils/containers/hashmap_base.h
  utils/containers/hashset.h
  utils/containers/map.h
  utils/containers/predicates.h
  utils/containers/reverse.h
  utils/containers/scope_stack.h
  utils/containers/slice.h
  utils/containers/transform.h
  utils/containers/unique_allocator.h
  utils/containers/unique_vector.h
  utils/containers/vector.h
)

tint_target_add_dependencies("utils/containers"
  "utils/ice"
  "utils/macros"
  "utils/math"
  "utils/memory"
  "utils/rtti"
  "utils/traits"
)

tint_add_target("utils/containers:test"
  utils/containers/bitset_test.cc
  utils/containers/enum_set_test.cc
  utils/containers/hashmap_test.cc
  utils/containers/hashset_test.cc
  utils/containers/map_test.cc
  utils/containers/predicates_test.cc
  utils/containers/reverse_test.cc
  utils/containers/scope_stack_test.cc
  utils/containers/slice_test.cc
  utils/containers/transform_test.cc
  utils/containers/unique_allocator_test.cc
  utils/containers/unique_vector_test.cc
  utils/containers/vector_test.cc
)

tint_target_add_dependencies("utils/containers:test"
  "lang/wgsl/program"
  "utils/containers"
  "utils/memory"
  "utils/text"
)