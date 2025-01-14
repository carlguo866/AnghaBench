
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_test_acl_t {int type; int permset; int tag; int qual; char* name; } ;


 int ARCHIVE_ENTRY_ACL_EVERYONE ;
 int ARCHIVE_ENTRY_ACL_GROUP_OBJ ;
 int ARCHIVE_ENTRY_ACL_OTHER ;
 int ARCHIVE_ENTRY_ACL_USER_OBJ ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_test_acl_match(struct archive_test_acl_t *acl, int type, int permset,
    int tag, int qual, const char *name)
{
 if (type != acl->type)
  return (0);
 if (permset != acl->permset)
  return (0);
 if (tag != acl->tag)
  return (0);
 if (tag == ARCHIVE_ENTRY_ACL_USER_OBJ)
  return (1);
 if (tag == ARCHIVE_ENTRY_ACL_GROUP_OBJ)
  return (1);
 if (tag == ARCHIVE_ENTRY_ACL_EVERYONE)
  return (1);
 if (tag == ARCHIVE_ENTRY_ACL_OTHER)
  return (1);
 if (qual != acl->qual)
  return (0);
 if (name == ((void*)0)) {
  if (acl->name == ((void*)0) || acl->name[0] == '\0')
   return (1);
  return (0);
 }
 if (acl->name == ((void*)0)) {
  if (name[0] == '\0')
   return (1);
  return (0);
 }
 return (0 == strcmp(name, acl->name));
}
