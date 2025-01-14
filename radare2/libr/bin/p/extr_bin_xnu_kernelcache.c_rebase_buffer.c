
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_13__ {scalar_t__ off; } ;
struct TYPE_12__ {int rebasing_buffer; TYPE_2__* rebase_info; int cache_buf; } ;
struct TYPE_11__ {int count; TYPE_4__* obj; int * buf; scalar_t__ eob; scalar_t__ off; } ;
struct TYPE_10__ {int n_ranges; int multiplier; TYPE_1__* ranges; } ;
struct TYPE_9__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_3__ RRebaseCtx ;
typedef int ROnRebaseFunc ;
typedef TYPE_4__ RKernelCacheObj ;
typedef int RIODesc ;
typedef TYPE_5__ RIO ;


 int iterate_rebase_list (int ,int ,scalar_t__,int ,TYPE_3__*) ;
 scalar_t__ on_rebase_pointer ;

__attribute__((used)) static void rebase_buffer(RKernelCacheObj *obj, RIO *io, RIODesc *fd, ut8 *buf, int count) {
 if (obj->rebasing_buffer) {
  return;
 }
 obj->rebasing_buffer = 1;

 ut64 off = io->off;
 ut64 eob = off + count;
 int i = 0;
 RRebaseCtx ctx;

 ctx.off = off;
 ctx.eob = eob;
 ctx.buf = buf;
 ctx.count = count;
 ctx.obj = obj;

 for (; i < obj->rebase_info->n_ranges; i++) {
  ut64 start = obj->rebase_info->ranges[i].offset;
  ut64 end = start + obj->rebase_info->ranges[i].size;
  if (end >= off && start <= eob) {
   iterate_rebase_list (obj->cache_buf, obj->rebase_info->multiplier, start,
    (ROnRebaseFunc) on_rebase_pointer, &ctx);
  }
 }

 obj->rebasing_buffer = 0;
}
