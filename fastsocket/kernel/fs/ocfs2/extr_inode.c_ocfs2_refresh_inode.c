
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ocfs2_dinode {int i_ctime_nsec; int i_ctime; int i_mtime_nsec; int i_mtime; int i_atime_nsec; int i_atime; int i_clusters; int i_mode; int i_gid; int i_uid; int i_size; int i_dyn_features; int i_attr; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; scalar_t__ i_blocks; void* i_mode; scalar_t__ i_gid; scalar_t__ i_uid; int i_nlink; } ;
struct TYPE_8__ {int ip_lock; void* ip_dyn_features; scalar_t__ ip_attr; scalar_t__ ip_clusters; } ;


 TYPE_4__* OCFS2_I (struct inode*) ;
 scalar_t__ S_ISLNK (void*) ;
 int i_size_write (struct inode*,void*) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 scalar_t__ ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_read_links_count (struct ocfs2_dinode*) ;
 int ocfs2_set_inode_flags (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_refresh_inode(struct inode *inode,
    struct ocfs2_dinode *fe)
{
 spin_lock(&OCFS2_I(inode)->ip_lock);

 OCFS2_I(inode)->ip_clusters = le32_to_cpu(fe->i_clusters);
 OCFS2_I(inode)->ip_attr = le32_to_cpu(fe->i_attr);
 OCFS2_I(inode)->ip_dyn_features = le16_to_cpu(fe->i_dyn_features);
 ocfs2_set_inode_flags(inode);
 i_size_write(inode, le64_to_cpu(fe->i_size));
 inode->i_nlink = ocfs2_read_links_count(fe);
 inode->i_uid = le32_to_cpu(fe->i_uid);
 inode->i_gid = le32_to_cpu(fe->i_gid);
 inode->i_mode = le16_to_cpu(fe->i_mode);
 if (S_ISLNK(inode->i_mode) && le32_to_cpu(fe->i_clusters) == 0)
  inode->i_blocks = 0;
 else
  inode->i_blocks = ocfs2_inode_sector_count(inode);
 inode->i_atime.tv_sec = le64_to_cpu(fe->i_atime);
 inode->i_atime.tv_nsec = le32_to_cpu(fe->i_atime_nsec);
 inode->i_mtime.tv_sec = le64_to_cpu(fe->i_mtime);
 inode->i_mtime.tv_nsec = le32_to_cpu(fe->i_mtime_nsec);
 inode->i_ctime.tv_sec = le64_to_cpu(fe->i_ctime);
 inode->i_ctime.tv_nsec = le32_to_cpu(fe->i_ctime_nsec);

 spin_unlock(&OCFS2_I(inode)->ip_lock);
}
