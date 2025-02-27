
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EINVAL ;
 int EXT3_XATTR_INDEX_TRUSTED ;
 int ext3_xattr_set (struct inode*,int ,char const*,void const*,size_t,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ext3_xattr_trusted_set(struct inode *inode, const char *name,
         const void *value, size_t size, int flags)
{
 if (strcmp(name, "") == 0)
  return -EINVAL;
 return ext3_xattr_set(inode, EXT3_XATTR_INDEX_TRUSTED, name,
         value, size, flags);
}
