// Copyright 2020 The Tint Authors.
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

#include "src/ast/case_statement.h"

#include "gtest/gtest.h"
#include "src/ast/if_statement.h"
#include "src/ast/kill_statement.h"
#include "src/ast/sint_literal.h"
#include "src/ast/type/i32_type.h"
#include "src/ast/type/u32_type.h"
#include "src/ast/uint_literal.h"

namespace tint {
namespace ast {
namespace {

using CaseStatementTest = testing::Test;

TEST_F(CaseStatementTest, Creation_i32) {
  ast::type::I32Type i32;

  CaseSelectorList b;
  b.push_back(std::make_unique<SintLiteral>(&i32, 2));

  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());

  auto* int_ptr = b.back().get();
  auto* kill_ptr = stmts[0].get();

  CaseStatement c(std::move(b), std::move(stmts));
  ASSERT_EQ(c.selectors().size(), 1u);
  EXPECT_EQ(c.selectors()[0].get(), int_ptr);
  ASSERT_EQ(c.body().size(), 1u);
  EXPECT_EQ(c.body()[0].get(), kill_ptr);
}

TEST_F(CaseStatementTest, Creation_u32) {
  ast::type::U32Type u32;

  CaseSelectorList b;
  b.push_back(std::make_unique<UintLiteral>(&u32, 2));

  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());

  auto* int_ptr = b.back().get();
  auto* kill_ptr = stmts[0].get();

  CaseStatement c(std::move(b), std::move(stmts));
  ASSERT_EQ(c.selectors().size(), 1u);
  EXPECT_EQ(c.selectors()[0].get(), int_ptr);
  ASSERT_EQ(c.body().size(), 1u);
  EXPECT_EQ(c.body()[0].get(), kill_ptr);
}

TEST_F(CaseStatementTest, Creation_WithSource) {
  ast::type::I32Type i32;
  CaseSelectorList b;
  b.push_back(std::make_unique<SintLiteral>(&i32, 2));

  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());

  CaseStatement c(Source{20, 2}, std::move(b), std::move(stmts));
  auto src = c.source();
  EXPECT_EQ(src.line, 20u);
  EXPECT_EQ(src.column, 2u);
}

TEST_F(CaseStatementTest, IsDefault_WithoutSelectors) {
  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());

  CaseStatement c;
  c.set_body(std::move(stmts));
  EXPECT_TRUE(c.IsDefault());
}

TEST_F(CaseStatementTest, IsDefault_WithSelectors) {
  ast::type::I32Type i32;
  CaseSelectorList b;
  b.push_back(std::make_unique<SintLiteral>(&i32, 2));

  CaseStatement c;
  c.set_selectors(std::move(b));
  EXPECT_FALSE(c.IsDefault());
}

TEST_F(CaseStatementTest, IsCase) {
  CaseStatement c;
  EXPECT_TRUE(c.IsCase());
}

TEST_F(CaseStatementTest, IsValid) {
  CaseStatement c;
  EXPECT_TRUE(c.IsValid());
}

TEST_F(CaseStatementTest, IsValid_NullBodyStatement) {
  ast::type::I32Type i32;
  CaseSelectorList b;
  b.push_back(std::make_unique<SintLiteral>(&i32, 2));

  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());
  stmts.push_back(nullptr);

  CaseStatement c(std::move(b), std::move(stmts));
  EXPECT_FALSE(c.IsValid());
}

TEST_F(CaseStatementTest, IsValid_InvalidBodyStatement) {
  ast::type::I32Type i32;
  CaseSelectorList b;
  b.push_back(std::make_unique<SintLiteral>(&i32, 2));

  StatementList stmts;
  stmts.push_back(std::make_unique<IfStatement>());

  CaseStatement c({std::move(b)}, std::move(stmts));
  EXPECT_FALSE(c.IsValid());
}

TEST_F(CaseStatementTest, ToStr_WithSelectors_i32) {
  ast::type::I32Type i32;
  CaseSelectorList b;
  b.push_back(std::make_unique<SintLiteral>(&i32, -2));

  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());
  CaseStatement c({std::move(b)}, std::move(stmts));

  std::ostringstream out;
  c.to_str(out, 2);
  EXPECT_EQ(out.str(), R"(  Case -2{
    Kill{}
  }
)");
}

TEST_F(CaseStatementTest, ToStr_WithSelectors_u32) {
  ast::type::U32Type u32;
  CaseSelectorList b;
  b.push_back(std::make_unique<UintLiteral>(&u32, 2));

  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());
  CaseStatement c({std::move(b)}, std::move(stmts));

  std::ostringstream out;
  c.to_str(out, 2);
  EXPECT_EQ(out.str(), R"(  Case 2{
    Kill{}
  }
)");
}

TEST_F(CaseStatementTest, ToStr_WithMultipleSelectors) {
  ast::type::I32Type i32;

  CaseSelectorList b;
  b.push_back(std::make_unique<SintLiteral>(&i32, 1));
  b.push_back(std::make_unique<SintLiteral>(&i32, 2));
  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());
  CaseStatement c(std::move(b), std::move(stmts));

  std::ostringstream out;
  c.to_str(out, 2);
  EXPECT_EQ(out.str(), R"(  Case 1, 2{
    Kill{}
  }
)");
}

TEST_F(CaseStatementTest, ToStr_WithoutSelectors) {
  StatementList stmts;
  stmts.push_back(std::make_unique<KillStatement>());
  CaseStatement c(CaseSelectorList{}, std::move(stmts));

  std::ostringstream out;
  c.to_str(out, 2);
  EXPECT_EQ(out.str(), R"(  Default{
    Kill{}
  }
)");
}

}  // namespace
}  // namespace ast
}  // namespace tint
