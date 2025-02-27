
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pg_sha224_ctx ;
struct TYPE_6__ {int * ptr; } ;
struct TYPE_7__ {int (* reset ) (TYPE_2__*) ;int free; int finish; int update; int block_size; int result_size; TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;


 int int_sha224_block_len ;
 int int_sha224_finish ;
 int int_sha224_free ;
 int int_sha224_len ;
 int int_sha224_reset (TYPE_2__*) ;
 int int_sha224_update ;
 int memset (int *,int ,int) ;
 int * px_alloc (int) ;
 int stub1 (TYPE_2__*) ;

void
init_sha224(PX_MD *md)
{
 pg_sha224_ctx *ctx;

 ctx = px_alloc(sizeof(*ctx));
 memset(ctx, 0, sizeof(*ctx));

 md->p.ptr = ctx;

 md->result_size = int_sha224_len;
 md->block_size = int_sha224_block_len;
 md->reset = int_sha224_reset;
 md->update = int_sha224_update;
 md->finish = int_sha224_finish;
 md->free = int_sha224_free;

 md->reset(md);
}
