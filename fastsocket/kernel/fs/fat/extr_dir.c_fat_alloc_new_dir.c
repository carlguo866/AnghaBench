
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct timespec {int dummy; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct TYPE_3__ {scalar_t__ isvfat; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct msdos_dir_entry {scalar_t__ size; void* starthi; void* start; void* cdate; void* adate; scalar_t__ ctime_cs; void* ctime; void* date; void* time; scalar_t__ lcase; int attr; int name; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;
typedef void* __le16 ;
struct TYPE_4__ {int i_logstart; } ;


 int ATTR_DIR ;
 int ENOMEM ;
 int MAX_BUF_PER_PAGE ;
 int MSDOS_DOT ;
 int MSDOS_DOTDOT ;
 TYPE_2__* MSDOS_I (struct inode*) ;
 int MSDOS_NAME ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 void* cpu_to_le16 (int) ;
 int fat_alloc_clusters (struct inode*,int*,int) ;
 int fat_clus_to_blknr (struct msdos_sb_info*,int) ;
 int fat_free_clusters (struct inode*,int) ;
 int fat_time_unix2fat (struct msdos_sb_info*,struct timespec*,void**,void**,scalar_t__*) ;
 int fat_zeroed_cluster (struct inode*,int ,int,struct buffer_head**,int) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct msdos_dir_entry*,int ,scalar_t__) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;

int fat_alloc_new_dir(struct inode *dir, struct timespec *ts)
{
 struct super_block *sb = dir->i_sb;
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 struct buffer_head *bhs[MAX_BUF_PER_PAGE];
 struct msdos_dir_entry *de;
 sector_t blknr;
 __le16 date, time;
 u8 time_cs;
 int err, cluster;

 err = fat_alloc_clusters(dir, &cluster, 1);
 if (err)
  goto error;

 blknr = fat_clus_to_blknr(sbi, cluster);
 bhs[0] = sb_getblk(sb, blknr);
 if (!bhs[0]) {
  err = -ENOMEM;
  goto error_free;
 }

 fat_time_unix2fat(sbi, ts, &time, &date, &time_cs);

 de = (struct msdos_dir_entry *)bhs[0]->b_data;

 memcpy(de[0].name, MSDOS_DOT, MSDOS_NAME);
 memcpy(de[1].name, MSDOS_DOTDOT, MSDOS_NAME);
 de->attr = de[1].attr = ATTR_DIR;
 de[0].lcase = de[1].lcase = 0;
 de[0].time = de[1].time = time;
 de[0].date = de[1].date = date;
 if (sbi->options.isvfat) {

  de[0].ctime = de[1].ctime = time;
  de[0].ctime_cs = de[1].ctime_cs = time_cs;
  de[0].adate = de[0].cdate = de[1].adate = de[1].cdate = date;
 } else {
  de[0].ctime = de[1].ctime = 0;
  de[0].ctime_cs = de[1].ctime_cs = 0;
  de[0].adate = de[0].cdate = de[1].adate = de[1].cdate = 0;
 }
 de[0].start = cpu_to_le16(cluster);
 de[0].starthi = cpu_to_le16(cluster >> 16);
 de[1].start = cpu_to_le16(MSDOS_I(dir)->i_logstart);
 de[1].starthi = cpu_to_le16(MSDOS_I(dir)->i_logstart >> 16);
 de[0].size = de[1].size = 0;
 memset(de + 2, 0, sb->s_blocksize - 2 * sizeof(*de));
 set_buffer_uptodate(bhs[0]);
 mark_buffer_dirty_inode(bhs[0], dir);

 err = fat_zeroed_cluster(dir, blknr, 1, bhs, MAX_BUF_PER_PAGE);
 if (err)
  goto error_free;

 return cluster;

error_free:
 fat_free_clusters(dir, cluster);
error:
 return err;
}
