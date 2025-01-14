
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {TYPE_4__ dst; TYPE_2__ src; int nbytes; int * page; } ;


 int blkcipher_map_src (struct blkcipher_walk*) ;
 int blkcipher_unmap_src (struct blkcipher_walk*) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static inline int blkcipher_next_copy(struct blkcipher_walk *walk)
{
 u8 *tmp = walk->page;

 blkcipher_map_src(walk);
 memcpy(tmp, walk->src.virt.addr, walk->nbytes);
 blkcipher_unmap_src(walk);

 walk->src.virt.addr = tmp;
 walk->dst.virt.addr = tmp;

 return 0;
}
