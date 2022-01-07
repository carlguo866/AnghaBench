
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EOPNOTSUPP ;
 int EXDEV ;
 int cifs_file_copychunk_range (unsigned int,struct file*,int ,struct file*,int ,size_t,unsigned int) ;
 int free_xid (unsigned int) ;
 int generic_copy_file_range (struct file*,int ,struct file*,int ,size_t,unsigned int) ;
 unsigned int get_xid () ;

__attribute__((used)) static ssize_t cifs_copy_file_range(struct file *src_file, loff_t off,
    struct file *dst_file, loff_t destoff,
    size_t len, unsigned int flags)
{
 unsigned int xid = get_xid();
 ssize_t rc;

 rc = cifs_file_copychunk_range(xid, src_file, off, dst_file, destoff,
     len, flags);
 free_xid(xid);

 if (rc == -EOPNOTSUPP || rc == -EXDEV)
  rc = generic_copy_file_range(src_file, off, dst_file,
          destoff, len, flags);
 return rc;
}
