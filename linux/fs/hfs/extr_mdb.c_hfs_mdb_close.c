
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {int mdb_bh; TYPE_1__* mdb; } ;
struct TYPE_3__ {int drAtrb; } ;


 TYPE_2__* HFS_SB (struct super_block*) ;
 int HFS_SB_ATTRIB_INCNSTNT ;
 int HFS_SB_ATTRIB_UNMNT ;
 int cpu_to_be16 (int ) ;
 int mark_buffer_dirty (int ) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

void hfs_mdb_close(struct super_block *sb)
{

 if (sb_rdonly(sb))
  return;
 HFS_SB(sb)->mdb->drAtrb |= cpu_to_be16(HFS_SB_ATTRIB_UNMNT);
 HFS_SB(sb)->mdb->drAtrb &= cpu_to_be16(~HFS_SB_ATTRIB_INCNSTNT);
 mark_buffer_dirty(HFS_SB(sb)->mdb_bh);
}
