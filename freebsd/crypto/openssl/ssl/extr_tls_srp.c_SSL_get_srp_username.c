
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* login; } ;
struct TYPE_9__ {TYPE_3__* ctx; TYPE_1__ srp_ctx; } ;
struct TYPE_7__ {char* login; } ;
struct TYPE_8__ {TYPE_2__ srp_ctx; } ;
typedef TYPE_4__ SSL ;



char *SSL_get_srp_username(SSL *s)
{
    if (s->srp_ctx.login != ((void*)0))
        return s->srp_ctx.login;
    return s->ctx->srp_ctx.login;
}
