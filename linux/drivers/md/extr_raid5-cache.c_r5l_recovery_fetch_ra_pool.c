
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct r5l_recovery_ctx {size_t valid_pages; size_t total_pages; TYPE_3__* ra_bio; int * ra_pool; scalar_t__ pool_offset; } ;
struct r5l_log {TYPE_2__* rdev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_8__ {scalar_t__ bi_sector; } ;
struct TYPE_10__ {TYPE_1__ bi_iter; } ;
struct TYPE_9__ {scalar_t__ data_offset; int bdev; } ;


 int BLOCK_SECTORS ;
 int PAGE_SIZE ;
 int REQ_OP_READ ;
 int bio_add_page (TYPE_3__*,int ,int ,int ) ;
 int bio_reset (TYPE_3__*) ;
 int bio_set_dev (TYPE_3__*,int ) ;
 int bio_set_op_attrs (TYPE_3__*,int ,int ) ;
 scalar_t__ r5l_ring_add (struct r5l_log*,scalar_t__,int ) ;
 int submit_bio_wait (TYPE_3__*) ;

__attribute__((used)) static int r5l_recovery_fetch_ra_pool(struct r5l_log *log,
          struct r5l_recovery_ctx *ctx,
          sector_t offset)
{
 bio_reset(ctx->ra_bio);
 bio_set_dev(ctx->ra_bio, log->rdev->bdev);
 bio_set_op_attrs(ctx->ra_bio, REQ_OP_READ, 0);
 ctx->ra_bio->bi_iter.bi_sector = log->rdev->data_offset + offset;

 ctx->valid_pages = 0;
 ctx->pool_offset = offset;

 while (ctx->valid_pages < ctx->total_pages) {
  bio_add_page(ctx->ra_bio,
        ctx->ra_pool[ctx->valid_pages], PAGE_SIZE, 0);
  ctx->valid_pages += 1;

  offset = r5l_ring_add(log, offset, BLOCK_SECTORS);

  if (offset == 0)
   break;
 }

 return submit_bio_wait(ctx->ra_bio);
}
