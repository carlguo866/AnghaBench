
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int breaked; } ;
struct TYPE_11__ {TYPE_2__* io; } ;
struct TYPE_13__ {TYPE_3__ iob; } ;
struct TYPE_12__ {TYPE_6__* bfvm; } ;
struct TYPE_10__ {TYPE_1__* desc; } ;
struct TYPE_9__ {TYPE_4__* data; } ;
typedef TYPE_4__ RIOBdescbg ;
typedef TYPE_5__ RDebug ;
typedef TYPE_6__ BfvmCPU ;


 int is_io_bf (TYPE_5__*) ;

__attribute__((used)) static int r_debug_bf_stop(RDebug *dbg) {
 if (!is_io_bf (dbg)) {
  return 0;
 }
 RIOBdescbg *o = dbg->iob.io->desc->data;
 BfvmCPU *c = o->bfvm;
 c->breaked = 1;
 return 1;
}
