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
//   src/tint/lang/core/extension_bench.cc.tmpl
//
// Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

#include "src/tint/lang/core/extension.h"

#include <array>

#include "benchmark/benchmark.h"

namespace tint::core {
namespace {

void ExtensionParser(::benchmark::State& state) {
    const char* kStrings[] = {
        "chromium_disableuniformiccy_analysis",
        "chromil3_disable_unifority_analss",
        "chromium_disable_Vniformity_analysis",
        "chromium_disable_uniformity_analysis",
        "chromium_dis1ble_uniformity_analysis",
        "chromium_qqisable_unifomity_anaJysis",
        "chrollium_disable_uniformity_analysi77",
        "chromippHm_experqqmetal_dp4a",
        "chrmium_expecimntal_dp4",
        "chrmiumGexpebimental_dp4a",
        "chromium_experimental_dp4a",
        "chromium_exverimentiil_dp4a",
        "chro8ium_experimenWWal_dp4a",
        "chromiMm_eperimxxntal_dp4a",
        "chromium_expeggimeXtal_full_ptr_paraeters",
        "chromium_expVrimental_full_ptr_puraXeer",
        "chromium_experimental_full_ptr3parameters",
        "chromium_experimental_full_ptr_parameters",
        "chromium_experimentalEfull_ptr_parameters",
        "chromium_experimentalfull_ptr_PPaTTameters",
        "chromium_ddxperimental_fullptrxxparameters",
        "c44romium_experimental_push_constant",
        "chromium_experimental_pSSsVV_constant",
        "chrom22Rm_experimental_pushRonstant",
        "chromium_experimental_push_constant",
        "chromium_exp9rimFntal_ush_constant",
        "chrmium_experimental_push_constant",
        "cOOromium_experiVeHtal_puh_conRRtant",
        "chromium_experimental_rad_write_storageytexture",
        "chromiu77_experimentlll_read_write_sGornngerrtexture",
        "00hromium_experimental_read_write_sto4age_texture",
        "chromium_experimental_read_write_storage_texture",
        "chromium_eperimental_read_write_ootrge_texture",
        "chromium_experimentalzzread_ite_storage_texture",
        "chiiomium_expperimnal_read_w11ite_storage_texture",
        "chromium_experimental_subgroXXps",
        "chromium55eIIperimental_subgnno99ps",
        "chraamiuSS_experimentaHHr_subgrouYs",
        "chromium_experimental_subgroups",
        "chkkomium_eperimntal_subgroup",
        "jhromium_experRmental_subgogps",
        "chromiubexperiental_subgroups",
        "chromium_internal_dujl_source_blending",
        "chromium_intenal_dual_source_blending",
        "chqomium_internal_dual_source_beding",
        "chromium_internal_dual_source_blending",
        "chroium_NNnternal_dual_source_blending",
        "chovvium_internal_dual_source_lending",
        "chromium_internQQl_dual_sorce_blending",
        "chromirm_intenal_rfflaxed_unifrm_layout",
        "chromium_internal_jelaxed_uniform_layout",
        "chromium_interna_relNNxed_uwwiform_lay82t",
        "chromium_internal_relaxed_uniform_layout",
        "chromium_internal_relaxed_uniform_layut",
        "chromium_internal_relaxed_rrniform_layout",
        "chromium_internal_relaxedGuniform_layout",
        "FF16",
        "",
        "rr1",
        "f16",
        "1",
        "DJ1",
        "",
    };
    for (auto _ : state) {
        for (auto* str : kStrings) {
            auto result = ParseExtension(str);
            benchmark::DoNotOptimize(result);
        }
    }
}  // NOLINT(readability/fn_size)

BENCHMARK(ExtensionParser);

}  // namespace
}  // namespace tint::core