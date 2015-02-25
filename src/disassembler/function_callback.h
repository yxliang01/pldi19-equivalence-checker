// Copyright 2013-2015 Stanford University
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

#ifndef STOKE_SRC_DISASSEMBLER_FUNCTION_CALLBACK_H
#define STOKE_SRC_DISASSEMBLER_FUNCTION_CALLBACK_H

#include "src/ext/x64asm/include/x64asm.h"
#include "src/tunit/tunit.h"

#include <map>
#include <string>
#include <vector>

namespace stoke {

struct FunctionCallbackData {
  /** A semantically equivalent x64asm function (rip offsets may be different) */
  TUnit tunit;
  /** Did a parse error occur? */
  bool parse_error;
};

/** Callback signature */
typedef void (*FunctionCallback)(const FunctionCallbackData& data, void* arg);

} // namespace stoke

#endif
