
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int vc_api ;

__attribute__((used)) static enum gfx_ctx_api gfx_ctx_vc_get_api(void *data)
{
   return vc_api;
}
