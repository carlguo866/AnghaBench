
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int md_ctx; TYPE_1__* md_info; } ;
typedef TYPE_2__ mbedtls_md_context_t ;
struct TYPE_4__ {int (* starts_func ) (int ) ;} ;


 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int stub1 (int ) ;

int mbedtls_md_starts( mbedtls_md_context_t *ctx )
{
    if( ctx == ((void*)0) || ctx->md_info == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    ctx->md_info->starts_func( ctx->md_ctx );

    return( 0 );
}
