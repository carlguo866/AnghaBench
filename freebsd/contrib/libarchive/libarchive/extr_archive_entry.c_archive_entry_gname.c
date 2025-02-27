
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_gname; int archive; } ;


 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 scalar_t__ archive_mstring_get_mbs (int ,int *,char const**) ;
 scalar_t__ errno ;

const char *
archive_entry_gname(struct archive_entry *entry)
{
 const char *p;
 if (archive_mstring_get_mbs(entry->archive, &entry->ae_gname, &p) == 0)
  return (p);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (((void*)0));
}
