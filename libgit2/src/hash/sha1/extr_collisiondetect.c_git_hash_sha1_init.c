
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ git_hash_sha1_ctx ;


 int SHA1DCInit (int *) ;
 int assert (TYPE_1__*) ;

int git_hash_sha1_init(git_hash_sha1_ctx *ctx)
{
 assert(ctx);
 SHA1DCInit(&ctx->c);
 return 0;
}
