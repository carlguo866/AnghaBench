
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ nvrtcResult ;
typedef int nvrtcProgram ;
struct TYPE_6__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_7__ {scalar_t__ nvrtc; } ;
typedef TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {scalar_t__ (* nvrtcGetPTX ) (int ,char*) ;int (* nvrtcGetErrorString ) (scalar_t__ const) ;} ;
typedef TYPE_3__ NVRTC_PTR ;


 scalar_t__ const NVRTC_SUCCESS ;
 int event_log_error (TYPE_1__*,char*,int ) ;
 scalar_t__ stub1 (int ,char*) ;
 int stub2 (scalar_t__ const) ;

int hc_nvrtcGetPTX (hashcat_ctx_t *hashcat_ctx, nvrtcProgram prog, char *ptx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  NVRTC_PTR *nvrtc = (NVRTC_PTR *) backend_ctx->nvrtc;

  const nvrtcResult NVRTC_err = nvrtc->nvrtcGetPTX (prog, ptx);

  if (NVRTC_err != NVRTC_SUCCESS)
  {
    event_log_error (hashcat_ctx, "nvrtcGetPTX(): %s", nvrtc->nvrtcGetErrorString (NVRTC_err));

    return -1;
  }

  return 0;
}
