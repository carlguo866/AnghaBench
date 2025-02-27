
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* module_warmup_disable; void* module_unstable_warning; int module_tmp_size; int module_st_pass; int module_st_hash; void* module_separator; int module_salt_type; void* module_salt_min; void* module_salt_max; void* module_pw_min; int module_pw_max; void* module_pwdump_column; void* module_potfile_keep_all_hashes; void* module_potfile_disable; void* module_potfile_custom_check; void* module_outfile_check_nocomp; void* module_outfile_check_disable; int module_opts_type; int module_opti_type; void* module_kern_type_dynamic; int module_kern_type; int module_kernel_threads_min; int module_kernel_threads_max; void* module_kernel_loops_min; void* module_kernel_loops_max; void* module_kernel_accel_min; void* module_kernel_accel_max; void* module_jit_cache_disable; void* module_jit_build_options; void* module_hook_size; void* module_hook_salt_size; void* module_hook23; void* module_hook12; void* module_hlfmt_disable; void* module_hashes_count_max; void* module_hashes_count_min; int module_hash_name; int module_hash_category; void* module_hash_mode; void* module_hash_init_selftest; int module_hash_encode; void* module_hash_encode_potfile; void* module_hash_encode_status; int module_hash_decode; void* module_hash_decode_zero_hash; void* module_hash_decode_potfile; void* module_hash_binary_save; void* module_hash_binary_parse; void* module_hash_binary_count; void* module_forced_outfile_format; void* module_extra_tmp_size; void* module_extra_buffer_size; int module_esalt_size; void* module_dictstat_disable; int module_dgst_size; int module_dgst_pos3; int module_dgst_pos2; int module_dgst_pos1; int module_dgst_pos0; void* module_deep_comp_kernel; void* module_build_plain_postprocess; void* module_benchmark_salt; void* module_benchmark_mask; void* module_benchmark_hook_salt; void* module_benchmark_esalt; int module_attack_exec; int module_interface_version; int module_context_size; } ;
typedef TYPE_1__ module_ctx_t ;


 int MODULE_CONTEXT_SIZE_CURRENT ;
 void* MODULE_DEFAULT ;
 int MODULE_INTERFACE_VERSION_CURRENT ;
 int module_attack_exec ;
 int module_dgst_pos0 ;
 int module_dgst_pos1 ;
 int module_dgst_pos2 ;
 int module_dgst_pos3 ;
 int module_dgst_size ;
 int module_esalt_size ;
 int module_hash_category ;
 int module_hash_decode ;
 int module_hash_encode ;
 int module_hash_name ;
 int module_kern_type ;
 int module_kernel_threads_max ;
 int module_kernel_threads_min ;
 int module_opti_type ;
 int module_opts_type ;
 int module_pw_max ;
 int module_salt_type ;
 int module_st_hash ;
 int module_st_pass ;
 int module_tmp_size ;

void module_init (module_ctx_t *module_ctx)
{
  module_ctx->module_context_size = MODULE_CONTEXT_SIZE_CURRENT;
  module_ctx->module_interface_version = MODULE_INTERFACE_VERSION_CURRENT;

  module_ctx->module_attack_exec = module_attack_exec;
  module_ctx->module_benchmark_esalt = MODULE_DEFAULT;
  module_ctx->module_benchmark_hook_salt = MODULE_DEFAULT;
  module_ctx->module_benchmark_mask = MODULE_DEFAULT;
  module_ctx->module_benchmark_salt = MODULE_DEFAULT;
  module_ctx->module_build_plain_postprocess = MODULE_DEFAULT;
  module_ctx->module_deep_comp_kernel = MODULE_DEFAULT;
  module_ctx->module_dgst_pos0 = module_dgst_pos0;
  module_ctx->module_dgst_pos1 = module_dgst_pos1;
  module_ctx->module_dgst_pos2 = module_dgst_pos2;
  module_ctx->module_dgst_pos3 = module_dgst_pos3;
  module_ctx->module_dgst_size = module_dgst_size;
  module_ctx->module_dictstat_disable = MODULE_DEFAULT;
  module_ctx->module_esalt_size = module_esalt_size;
  module_ctx->module_extra_buffer_size = MODULE_DEFAULT;
  module_ctx->module_extra_tmp_size = MODULE_DEFAULT;
  module_ctx->module_forced_outfile_format = MODULE_DEFAULT;
  module_ctx->module_hash_binary_count = MODULE_DEFAULT;
  module_ctx->module_hash_binary_parse = MODULE_DEFAULT;
  module_ctx->module_hash_binary_save = MODULE_DEFAULT;
  module_ctx->module_hash_decode_potfile = MODULE_DEFAULT;
  module_ctx->module_hash_decode_zero_hash = MODULE_DEFAULT;
  module_ctx->module_hash_decode = module_hash_decode;
  module_ctx->module_hash_encode_status = MODULE_DEFAULT;
  module_ctx->module_hash_encode_potfile = MODULE_DEFAULT;
  module_ctx->module_hash_encode = module_hash_encode;
  module_ctx->module_hash_init_selftest = MODULE_DEFAULT;
  module_ctx->module_hash_mode = MODULE_DEFAULT;
  module_ctx->module_hash_category = module_hash_category;
  module_ctx->module_hash_name = module_hash_name;
  module_ctx->module_hashes_count_min = MODULE_DEFAULT;
  module_ctx->module_hashes_count_max = MODULE_DEFAULT;
  module_ctx->module_hlfmt_disable = MODULE_DEFAULT;
  module_ctx->module_hook12 = MODULE_DEFAULT;
  module_ctx->module_hook23 = MODULE_DEFAULT;
  module_ctx->module_hook_salt_size = MODULE_DEFAULT;
  module_ctx->module_hook_size = MODULE_DEFAULT;
  module_ctx->module_jit_build_options = MODULE_DEFAULT;
  module_ctx->module_jit_cache_disable = MODULE_DEFAULT;
  module_ctx->module_kernel_accel_max = MODULE_DEFAULT;
  module_ctx->module_kernel_accel_min = MODULE_DEFAULT;
  module_ctx->module_kernel_loops_max = MODULE_DEFAULT;
  module_ctx->module_kernel_loops_min = MODULE_DEFAULT;
  module_ctx->module_kernel_threads_max = module_kernel_threads_max;
  module_ctx->module_kernel_threads_min = module_kernel_threads_min;
  module_ctx->module_kern_type = module_kern_type;
  module_ctx->module_kern_type_dynamic = MODULE_DEFAULT;
  module_ctx->module_opti_type = module_opti_type;
  module_ctx->module_opts_type = module_opts_type;
  module_ctx->module_outfile_check_disable = MODULE_DEFAULT;
  module_ctx->module_outfile_check_nocomp = MODULE_DEFAULT;
  module_ctx->module_potfile_custom_check = MODULE_DEFAULT;
  module_ctx->module_potfile_disable = MODULE_DEFAULT;
  module_ctx->module_potfile_keep_all_hashes = MODULE_DEFAULT;
  module_ctx->module_pwdump_column = MODULE_DEFAULT;
  module_ctx->module_pw_max = module_pw_max;
  module_ctx->module_pw_min = MODULE_DEFAULT;
  module_ctx->module_salt_max = MODULE_DEFAULT;
  module_ctx->module_salt_min = MODULE_DEFAULT;
  module_ctx->module_salt_type = module_salt_type;
  module_ctx->module_separator = MODULE_DEFAULT;
  module_ctx->module_st_hash = module_st_hash;
  module_ctx->module_st_pass = module_st_pass;
  module_ctx->module_tmp_size = module_tmp_size;
  module_ctx->module_unstable_warning = MODULE_DEFAULT;
  module_ctx->module_warmup_disable = MODULE_DEFAULT;
}
