
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {scalar_t__ entry_padding; scalar_t__ entry_bytes_remaining; } ;
struct TYPE_2__ {scalar_t__ archive_format; char* archive_format_name; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;
typedef int mode_t ;
typedef int dev_t ;


 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_FORMAT_CPIO_AFIO_LARGE ;
 scalar_t__ ARCHIVE_FORMAT_CPIO_POSIX ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 void* __archive_read_ahead (struct archive_read*,int ,int *) ;
 int __archive_read_consume (struct archive_read*,int ) ;
 int archive_entry_set_dev (struct archive_entry*,int ) ;
 int archive_entry_set_gid (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_ino (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_mode (struct archive_entry*,int ) ;
 int archive_entry_set_mtime (struct archive_entry*,scalar_t__,int ) ;
 int archive_entry_set_nlink (struct archive_entry*,unsigned int) ;
 int archive_entry_set_rdev (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_uid (struct archive_entry*,scalar_t__) ;
 scalar_t__ atol8 (char const*,int ) ;
 int find_odc_header (struct archive_read*) ;
 int header_afiol (struct archive_read*,struct cpio*,struct archive_entry*,size_t*,size_t*) ;
 int odc_dev_offset ;
 int odc_dev_size ;
 int odc_filesize_offset ;
 int odc_filesize_size ;
 int odc_gid_offset ;
 int odc_gid_size ;
 int odc_header_size ;
 int odc_ino_offset ;
 int odc_ino_size ;
 int odc_mode_offset ;
 int odc_mode_size ;
 int odc_mtime_offset ;
 int odc_mtime_size ;
 int odc_namesize_offset ;
 int odc_namesize_size ;
 int odc_nlink_offset ;
 int odc_nlink_size ;
 int odc_rdev_offset ;
 int odc_rdev_size ;
 int odc_uid_offset ;
 int odc_uid_size ;

__attribute__((used)) static int
header_odc(struct archive_read *a, struct cpio *cpio,
    struct archive_entry *entry, size_t *namelength, size_t *name_pad)
{
 const void *h;
 int r;
 const char *header;

 a->archive.archive_format = ARCHIVE_FORMAT_CPIO_POSIX;
 a->archive.archive_format_name = "POSIX octet-oriented cpio";


 r = find_odc_header(a);
 if (r < ARCHIVE_WARN)
  return (r);

 if (a->archive.archive_format == ARCHIVE_FORMAT_CPIO_AFIO_LARGE) {
  int r2 = (header_afiol(a, cpio, entry, namelength, name_pad));
  if (r2 == ARCHIVE_OK)
   return (r);
  else
   return (r2);
 }


 h = __archive_read_ahead(a, odc_header_size, ((void*)0));
 if (h == ((void*)0))
     return (ARCHIVE_FATAL);


 header = (const char *)h;

 archive_entry_set_dev(entry,
  (dev_t)atol8(header + odc_dev_offset, odc_dev_size));
 archive_entry_set_ino(entry, atol8(header + odc_ino_offset, odc_ino_size));
 archive_entry_set_mode(entry,
  (mode_t)atol8(header + odc_mode_offset, odc_mode_size));
 archive_entry_set_uid(entry, atol8(header + odc_uid_offset, odc_uid_size));
 archive_entry_set_gid(entry, atol8(header + odc_gid_offset, odc_gid_size));
 archive_entry_set_nlink(entry,
  (unsigned int)atol8(header + odc_nlink_offset, odc_nlink_size));
 archive_entry_set_rdev(entry,
  (dev_t)atol8(header + odc_rdev_offset, odc_rdev_size));
 archive_entry_set_mtime(entry, atol8(header + odc_mtime_offset, odc_mtime_size), 0);
 *namelength = (size_t)atol8(header + odc_namesize_offset, odc_namesize_size);
 *name_pad = 0;






 cpio->entry_bytes_remaining =
     atol8(header + odc_filesize_offset, odc_filesize_size);
 archive_entry_set_size(entry, cpio->entry_bytes_remaining);
 cpio->entry_padding = 0;
 __archive_read_consume(a, odc_header_size);
 return (r);
}
