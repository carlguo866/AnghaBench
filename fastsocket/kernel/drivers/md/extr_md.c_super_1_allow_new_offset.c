
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned long long sector; unsigned long long size; } ;
struct md_rdev {unsigned long long data_offset; int sb_start; TYPE_4__ badblocks; TYPE_2__* mddev; } ;
struct TYPE_7__ {int file_pages; } ;
struct bitmap {TYPE_3__ storage; } ;
struct TYPE_5__ {int offset; int file; } ;
struct TYPE_6__ {scalar_t__ minor_version; TYPE_1__ bitmap_info; struct bitmap* bitmap; } ;


 int PAGE_SIZE ;

__attribute__((used)) static int
super_1_allow_new_offset(struct md_rdev *rdev,
    unsigned long long new_offset)
{

 struct bitmap *bitmap;
 if (new_offset >= rdev->data_offset)
  return 1;



 if (rdev->mddev->minor_version == 0)
  return 1;







 if (rdev->sb_start + (32+4)*2 > new_offset)
  return 0;
 bitmap = rdev->mddev->bitmap;
 if (bitmap && !rdev->mddev->bitmap_info.file &&
     rdev->sb_start + rdev->mddev->bitmap_info.offset +
     bitmap->storage.file_pages * (PAGE_SIZE>>9) > new_offset)
  return 0;
 if (rdev->badblocks.sector + rdev->badblocks.size > new_offset)
  return 0;

 return 1;
}
