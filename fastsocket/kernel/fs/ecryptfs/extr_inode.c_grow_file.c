
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp_file_info ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct ecryptfs_file_info {TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef int fake_file ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ crypt_stat; int lower_file; } ;


 int ECRYPTFS_NEW_FILE ;
 TYPE_3__* ecryptfs_inode_to_private (struct inode*) ;
 int ecryptfs_set_file_lower (struct file*,int ) ;
 int ecryptfs_set_file_private (struct file*,struct file*) ;
 int ecryptfs_write (struct file*,char*,int ,int) ;
 int ecryptfs_write_inode_size_to_metadata (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int memset (struct file*,int ,int) ;

__attribute__((used)) static int grow_file(struct dentry *ecryptfs_dentry)
{
 struct inode *ecryptfs_inode = ecryptfs_dentry->d_inode;
 struct file fake_file;
 struct ecryptfs_file_info tmp_file_info;
 char zero_virt[] = { 0x00 };
 int rc = 0;

 memset(&fake_file, 0, sizeof(fake_file));
 fake_file.f_path.dentry = ecryptfs_dentry;
 memset(&tmp_file_info, 0, sizeof(tmp_file_info));
 ecryptfs_set_file_private(&fake_file, &tmp_file_info);
 ecryptfs_set_file_lower(
  &fake_file,
  ecryptfs_inode_to_private(ecryptfs_inode)->lower_file);
 rc = ecryptfs_write(&fake_file, zero_virt, 0, 1);
 i_size_write(ecryptfs_inode, 0);
 rc = ecryptfs_write_inode_size_to_metadata(ecryptfs_inode);
 ecryptfs_inode_to_private(ecryptfs_inode)->crypt_stat.flags |=
  ECRYPTFS_NEW_FILE;
 return rc;
}
