
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_appctx_t ;
struct TYPE_6__ {int (* ctxsuspend ) (TYPE_2__*) ;} ;


 int ISCAPI_APPCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*) ;

isc_result_t
isc_app_ctxsuspend(isc_appctx_t *ctx) {
 REQUIRE(ISCAPI_APPCTX_VALID(ctx));

 return (ctx->methods->ctxsuspend(ctx));
}
