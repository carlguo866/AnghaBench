
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_acl_entry {int name; } ;
struct archive_acl {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 struct archive_acl_entry* acl_new_entry (struct archive_acl*,int,int,int,int) ;
 scalar_t__ acl_special (struct archive_acl*,int,int,int) ;
 int archive_mstring_clean (int *) ;
 int archive_mstring_copy_wcs_len (int *,int const*,size_t) ;

int
archive_acl_add_entry_w_len(struct archive_acl *acl,
    int type, int permset, int tag, int id, const wchar_t *name, size_t len)
{
 struct archive_acl_entry *ap;

 if (acl_special(acl, type, permset, tag) == 0)
  return ARCHIVE_OK;
 ap = acl_new_entry(acl, type, permset, tag, id);
 if (ap == ((void*)0)) {

  return ARCHIVE_FAILED;
 }
 if (name != ((void*)0) && *name != L'\0' && len > 0)
  archive_mstring_copy_wcs_len(&ap->name, name, len);
 else
  archive_mstring_clean(&ap->name);
 return ARCHIVE_OK;
}
