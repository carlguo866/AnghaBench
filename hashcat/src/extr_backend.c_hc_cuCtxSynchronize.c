
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_7__ {scalar_t__ cuda; } ;
typedef TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {scalar_t__ (* cuCtxSynchronize ) () ;scalar_t__ const (* cuGetErrorString ) (scalar_t__ const,char const**) ;} ;
typedef scalar_t__ CUresult ;
typedef TYPE_3__ CUDA_PTR ;


 scalar_t__ const CUDA_SUCCESS ;
 int event_log_error (TYPE_1__*,char*,scalar_t__ const) ;
 scalar_t__ stub1 () ;
 scalar_t__ const stub2 (scalar_t__ const,char const**) ;

int hc_cuCtxSynchronize (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  CUDA_PTR *cuda = (CUDA_PTR *) backend_ctx->cuda;

  const CUresult CU_err = cuda->cuCtxSynchronize ();

  if (CU_err != CUDA_SUCCESS)
  {
    const char *pStr = ((void*)0);

    if (cuda->cuGetErrorString (CU_err, &pStr) == CUDA_SUCCESS)
    {
      event_log_error (hashcat_ctx, "cuCtxSynchronize(): %s", pStr);
    }
    else
    {
      event_log_error (hashcat_ctx, "cuCtxSynchronize(): %d", CU_err);
    }

    return -1;
  }

  return 0;
}
