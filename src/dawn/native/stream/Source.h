// Copyright 2022 The Dawn Authors
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

#ifndef SRC_DAWN_NATIVE_STREAM_SOURCE_H_
#define SRC_DAWN_NATIVE_STREAM_SOURCE_H_

#include <cstddef>

namespace dawn::native::stream {

// Interface for a deserialization source.
class Source {
  public:
    // Try to read `bytes` space from the source. The data must live as long as `Source.
    // Returns MaybeError and writes result to |ptr| because ResultOrError uses
    // a tagged pointer that must be 4-byte aligned. This function writes out |ptr|
    // which may not be aligned.
    virtual MaybeError Read(const void** ptr, size_t bytes) = 0;
};

}  // namespace dawn::native::stream

#endif  // SRC_DAWN_NATIVE_STREAM_SOURCE_H_
