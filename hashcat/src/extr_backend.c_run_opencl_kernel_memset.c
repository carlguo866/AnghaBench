
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int* kernel_params_memset_buf64; int kernel_wgs_memset; void** kernel_params_memset; int opencl_command_queue; int opencl_kernel_memset; int * kernel_params_memset_buf32; } ;
typedef TYPE_1__ hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int cl_ulong ;
typedef int cl_uint ;
typedef int cl_mem ;
typedef int cl_kernel ;


 int CL_TRUE ;
 int hc_clEnqueueNDRangeKernel (int *,int ,int ,int,int *,size_t const*,size_t const*,int ,int *,int *) ;
 int hc_clEnqueueWriteBuffer (int *,int ,int ,int ,int const,int const,int *,int ,int *,int *) ;
 int hc_clFinish (int *,int ) ;
 int hc_clFlush (int *,int ) ;
 int hc_clSetKernelArg (int *,int ,int,int,void*) ;
 int round_up_multiple_64 (int,int const) ;

int run_opencl_kernel_memset (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, cl_mem buf, const u32 value, const u64 size)
{
  const u64 num16d = size / 16;
  const u64 num16m = size % 16;

  if (num16d)
  {
    device_param->kernel_params_memset_buf32[1] = value;
    device_param->kernel_params_memset_buf64[2] = num16d;

    const u64 kernel_threads = device_param->kernel_wgs_memset;

    u64 num_elements = num16d;

    num_elements = round_up_multiple_64 (num_elements, kernel_threads);

    cl_kernel kernel = device_param->opencl_kernel_memset;

    if (hc_clSetKernelArg (hashcat_ctx, kernel, 0, sizeof (cl_mem), (void *) &buf) == -1) return -1;
    if (hc_clSetKernelArg (hashcat_ctx, kernel, 1, sizeof (cl_uint), device_param->kernel_params_memset[1]) == -1) return -1;
    if (hc_clSetKernelArg (hashcat_ctx, kernel, 2, sizeof (cl_ulong), device_param->kernel_params_memset[2]) == -1) return -1;

    const size_t global_work_size[3] = { num_elements, 1, 1 };
    const size_t local_work_size[3] = { kernel_threads, 1, 1 };

    if (hc_clEnqueueNDRangeKernel (hashcat_ctx, device_param->opencl_command_queue, kernel, 1, ((void*)0), global_work_size, local_work_size, 0, ((void*)0), ((void*)0)) == -1) return -1;

    if (hc_clFlush (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

    if (hc_clFinish (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;
  }

  if (num16m)
  {
    u32 tmp[4];

    tmp[0] = value;
    tmp[1] = value;
    tmp[2] = value;
    tmp[3] = value;

    if (hc_clEnqueueWriteBuffer (hashcat_ctx, device_param->opencl_command_queue, buf, CL_TRUE, num16d * 16, num16m, tmp, 0, ((void*)0), ((void*)0)) == -1) return -1;
  }

  return 0;
}
