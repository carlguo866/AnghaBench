
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_support_format_tar (struct archive*) ;

int
archive_read_support_format_gnutar(struct archive *a)
{
 archive_check_magic(a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_gnutar");
 return (archive_read_support_format_tar(a));
}
