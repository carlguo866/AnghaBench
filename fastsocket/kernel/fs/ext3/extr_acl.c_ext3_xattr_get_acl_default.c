
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ACL_TYPE_DEFAULT ;
 int EINVAL ;
 int ext3_xattr_get_acl (struct inode*,int ,void*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ext3_xattr_get_acl_default(struct inode *inode, const char *name,
      void *buffer, size_t size)
{
 if (strcmp(name, "") != 0)
  return -EINVAL;
 return ext3_xattr_get_acl(inode, ACL_TYPE_DEFAULT, buffer, size);
}
