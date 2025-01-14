
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int SEEK_CUR ;
 int archive_set_error (struct archive*,int ,char*) ;
 int errno ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 scalar_t__ write (int,char const*,size_t) ;

__attribute__((used)) static int
pad_to(struct archive *a, int fd, int can_lseek,
    size_t nulls_size, const char *nulls,
    int64_t target_offset, int64_t actual_offset)
{
 size_t to_write;
 ssize_t bytes_written;

 if (can_lseek) {
  actual_offset = lseek(fd,
      target_offset - actual_offset, SEEK_CUR);
  if (actual_offset != target_offset) {
   archive_set_error(a, errno, "Seek error");
   return (ARCHIVE_FATAL);
  }
  return (ARCHIVE_OK);
 }
 while (target_offset > actual_offset) {
  to_write = nulls_size;
  if (target_offset < actual_offset + (int64_t)nulls_size)
   to_write = (size_t)(target_offset - actual_offset);
  bytes_written = write(fd, nulls, to_write);
  if (bytes_written < 0) {
   archive_set_error(a, errno, "Write error");
   return (ARCHIVE_FATAL);
  }
  actual_offset += bytes_written;
 }
 return (ARCHIVE_OK);
}
