
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
typedef int cl_program_info ;
typedef int cl_program ;
typedef scalar_t__ cl_int ;
struct TYPE_7__ {scalar_t__ ocl; } ;
typedef TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {scalar_t__ (* clGetProgramInfo ) (int ,int ,size_t,void*,size_t*) ;} ;
typedef TYPE_3__ OCL_PTR ;


 scalar_t__ const CL_SUCCESS ;
 int event_log_error (TYPE_1__*,char*,int ) ;
 scalar_t__ stub1 (int ,int ,size_t,void*,size_t*) ;
 int val2cstr_cl (scalar_t__ const) ;

int hc_clGetProgramInfo (hashcat_ctx_t *hashcat_ctx, cl_program program, cl_program_info param_name, size_t param_value_size, void *param_value, size_t *param_value_size_ret)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  OCL_PTR *ocl = (OCL_PTR *) backend_ctx->ocl;

  const cl_int CL_err = ocl->clGetProgramInfo (program, param_name, param_value_size, param_value, param_value_size_ret);

  if (CL_err != CL_SUCCESS)
  {
    event_log_error (hashcat_ctx, "clGetProgramInfo(): %s", val2cstr_cl (CL_err));

    return -1;
  }

  return 0;
}
