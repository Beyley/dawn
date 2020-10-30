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

#ifndef SRC_READER_WGSL_PARSER_H_
#define SRC_READER_WGSL_PARSER_H_

#include <memory>
#include <string>

#include "src/reader/reader.h"
#include "src/source.h"

namespace tint {
namespace reader {
namespace wgsl {

class ParserImpl;

/// Parser for WGSL source data
class Parser : public Reader {
 public:
  /// Creates a new parser from the given file.
  /// @param ctx the non-null context object
  /// @param file the input source file to parse
  Parser(Context* ctx, Source::File const* file);

  /// Creates a new parser from the given file content.
  /// @param ctx the non-null context object
  /// @param content the input string to parse
  /// TODO(bclayton): Remove this constructor.
  /// It purely exists to break up changes into bite sized pieces.
  Parser(Context* ctx, const std::string& content);

  ~Parser() override;

  /// Run the parser
  /// @returns true if the parse was successful, false otherwise.
  bool Parse() override;

  /// @returns the module. The module in the parser will be reset after this.
  ast::Module module() override;

 private:
  std::unique_ptr<ParserImpl> impl_;
};

}  // namespace wgsl
}  // namespace reader
}  // namespace tint

#endif  // SRC_READER_WGSL_PARSER_H_
