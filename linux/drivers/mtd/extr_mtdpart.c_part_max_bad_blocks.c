
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {scalar_t__ offset; TYPE_1__* parent; } ;
struct mtd_info {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* _max_bad_blocks ) (TYPE_1__*,scalar_t__,size_t) ;} ;


 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int stub1 (TYPE_1__*,scalar_t__,size_t) ;

__attribute__((used)) static int part_max_bad_blocks(struct mtd_info *mtd, loff_t ofs, size_t len)
{
 struct mtd_part *part = mtd_to_part(mtd);

 return part->parent->_max_bad_blocks(part->parent,
          ofs + part->offset, len);
}
