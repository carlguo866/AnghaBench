
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_WRITE_MAGIC ;
 int _archive_set_options (struct archive*,char const*,int ,char*,int ) ;
 int archive_set_option ;

int
archive_write_set_options(struct archive *a, const char *options)
{
 return _archive_set_options(a, options,
     ARCHIVE_WRITE_MAGIC, "archive_write_set_options",
     archive_set_option);
}
