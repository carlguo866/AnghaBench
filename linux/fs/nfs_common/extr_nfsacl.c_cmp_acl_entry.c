
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl_entry {scalar_t__ e_tag; int e_gid; int e_uid; } ;


 scalar_t__ ACL_GROUP ;
 scalar_t__ ACL_USER ;
 scalar_t__ gid_gt (int ,int ) ;
 scalar_t__ gid_lt (int ,int ) ;
 scalar_t__ uid_gt (int ,int ) ;
 scalar_t__ uid_lt (int ,int ) ;

__attribute__((used)) static int
cmp_acl_entry(const void *x, const void *y)
{
 const struct posix_acl_entry *a = x, *b = y;

 if (a->e_tag != b->e_tag)
  return a->e_tag - b->e_tag;
 else if ((a->e_tag == ACL_USER) && uid_gt(a->e_uid, b->e_uid))
  return 1;
 else if ((a->e_tag == ACL_USER) && uid_lt(a->e_uid, b->e_uid))
  return -1;
 else if ((a->e_tag == ACL_GROUP) && gid_gt(a->e_gid, b->e_gid))
  return 1;
 else if ((a->e_tag == ACL_GROUP) && gid_lt(a->e_gid, b->e_gid))
  return -1;
 else
  return 0;
}
