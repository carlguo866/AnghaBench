
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
struct tar {int sconv; TYPE_1__ longname; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ archive_entry_copy_pathname_l (struct archive_entry*,int ,int ,int ) ;
 int archive_strlen (TYPE_1__*) ;
 int read_body_to_string (struct archive_read*,struct tar*,TYPE_1__*,void const*,size_t*) ;
 int set_conversion_failed_error (struct archive_read*,int ,char*) ;
 int tar_read_header (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ;

__attribute__((used)) static int
header_longname(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
 int err;

 err = read_body_to_string(a, tar, &(tar->longname), h, unconsumed);
 if (err != ARCHIVE_OK)
  return (err);

 err = tar_read_header(a, tar, entry, unconsumed);
 if ((err != ARCHIVE_OK) && (err != ARCHIVE_WARN))
  return (err);
 if (archive_entry_copy_pathname_l(entry, tar->longname.s,
     archive_strlen(&(tar->longname)), tar->sconv) != 0)
  err = set_conversion_failed_error(a, tar->sconv, "Pathname");
 return (err);
}
