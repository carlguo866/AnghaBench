
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int csize; } ;
struct TYPE_7__ {TYPE_1__ parts; } ;
struct TYPE_8__ {TYPE_2__ user; } ;
struct TYPE_9__ {TYPE_3__ ctx; } ;
typedef TYPE_4__ CacheSyncCtx ;



__attribute__((used)) static uint64_t
cache_sync_csize_parts(const CacheSyncCtx *ctx)
{
    return ctx->ctx.user.parts.csize;
}
