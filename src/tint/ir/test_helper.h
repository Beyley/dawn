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

#ifndef SRC_TINT_IR_TEST_HELPER_H_
#define SRC_TINT_IR_TEST_HELPER_H_

#include <memory>
#include <utility>

#include "gtest/gtest.h"
#include "src/tint/ir/builder_impl.h"
#include "src/tint/program_builder.h"

namespace tint::ir {

/// Helper class for testing
template <typename BASE>
class TestHelperBase : public BASE, public ProgramBuilder {
  public:
    TestHelperBase() = default;

    ~TestHelperBase() override = default;

    /// Builds and returns a BuilderImpl from the program.
    /// @note The builder is only created once. Multiple calls to Build() will
    /// return the same builder without rebuilding.
    /// @return the builder
    BuilderImpl& Build() {
        if (gen_) {
            return *gen_;
        }
        program = std::make_unique<Program>(std::move(*this));
        diag::Formatter formatter;
        [&]() { ASSERT_TRUE(program->IsValid()) << formatter.format(program->Diagnostics()); }();
        gen_ = std::make_unique<BuilderImpl>(program.get());
        return *gen_;
    }

    /// The program built with a call to Build()
    std::unique_ptr<Program> program;

  private:
    std::unique_ptr<BuilderImpl> gen_;
};
using TestHelper = TestHelperBase<testing::Test>;

template <typename T>
using TestParamHelper = TestHelperBase<testing::TestWithParam<T>>;

}  // namespace tint::ir

#endif  // SRC_TINT_IR_TEST_HELPER_H_
