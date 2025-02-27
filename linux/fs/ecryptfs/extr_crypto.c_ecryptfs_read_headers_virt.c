
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecryptfs_crypt_stat {int flags; scalar_t__ file_version; int * mount_crypt_stat; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {int mount_crypt_stat; } ;


 int ECRYPTFS_FILE_SIZE_BYTES ;
 int ECRYPTFS_I_SIZE_INITIALIZED ;
 scalar_t__ ECRYPTFS_SUPPORTED_FILE_VERSION ;
 int EINVAL ;
 int KERN_WARNING ;
 scalar_t__ MAGIC_ECRYPTFS_MARKER_SIZE_BYTES ;
 int d_inode (struct dentry*) ;
 int ecryptfs_i_size_init (char*,int ) ;
 int ecryptfs_parse_packet_set (struct ecryptfs_crypt_stat*,char*,struct dentry*) ;
 int ecryptfs_printk (int ,char*,int,...) ;
 int ecryptfs_process_flags (struct ecryptfs_crypt_stat*,char*,int*) ;
 int ecryptfs_set_default_sizes (struct ecryptfs_crypt_stat*) ;
 TYPE_1__* ecryptfs_superblock_to_private (int ) ;
 int ecryptfs_validate_marker (char*) ;
 int parse_header_metadata (struct ecryptfs_crypt_stat*,char*,int*,int) ;
 int set_default_header_data (struct ecryptfs_crypt_stat*) ;

__attribute__((used)) static int ecryptfs_read_headers_virt(char *page_virt,
          struct ecryptfs_crypt_stat *crypt_stat,
          struct dentry *ecryptfs_dentry,
          int validate_header_size)
{
 int rc = 0;
 int offset;
 int bytes_read;

 ecryptfs_set_default_sizes(crypt_stat);
 crypt_stat->mount_crypt_stat = &ecryptfs_superblock_to_private(
  ecryptfs_dentry->d_sb)->mount_crypt_stat;
 offset = ECRYPTFS_FILE_SIZE_BYTES;
 rc = ecryptfs_validate_marker(page_virt + offset);
 if (rc)
  goto out;
 if (!(crypt_stat->flags & ECRYPTFS_I_SIZE_INITIALIZED))
  ecryptfs_i_size_init(page_virt, d_inode(ecryptfs_dentry));
 offset += MAGIC_ECRYPTFS_MARKER_SIZE_BYTES;
 ecryptfs_process_flags(crypt_stat, (page_virt + offset), &bytes_read);
 if (crypt_stat->file_version > ECRYPTFS_SUPPORTED_FILE_VERSION) {
  ecryptfs_printk(KERN_WARNING, "File version is [%d]; only "
    "file version [%d] is supported by this "
    "version of eCryptfs\n",
    crypt_stat->file_version,
    ECRYPTFS_SUPPORTED_FILE_VERSION);
  rc = -EINVAL;
  goto out;
 }
 offset += bytes_read;
 if (crypt_stat->file_version >= 1) {
  rc = parse_header_metadata(crypt_stat, (page_virt + offset),
        &bytes_read, validate_header_size);
  if (rc) {
   ecryptfs_printk(KERN_WARNING, "Error reading header "
     "metadata; rc = [%d]\n", rc);
  }
  offset += bytes_read;
 } else
  set_default_header_data(crypt_stat);
 rc = ecryptfs_parse_packet_set(crypt_stat, (page_virt + offset),
           ecryptfs_dentry);
out:
 return rc;
}
