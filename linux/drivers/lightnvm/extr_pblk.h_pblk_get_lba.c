
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 int NR_PHY_IN_LOG ;

__attribute__((used)) static inline sector_t pblk_get_lba(struct bio *bio)
{
 return bio->bi_iter.bi_sector / NR_PHY_IN_LOG;
}
