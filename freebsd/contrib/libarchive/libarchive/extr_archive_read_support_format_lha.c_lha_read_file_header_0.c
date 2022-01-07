
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lha {unsigned char header_size; int setflag; void* gid; void* uid; void* mode; void* mtime; void* crc; int filename; void* origsize; void* compsize; } ;
struct archive_read {int archive; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int CRC_IS_SET ;
 int H0_COMP_SIZE_OFFSET ;
 int H0_DOS_TIME_OFFSET ;
 int H0_FILE_NAME_OFFSET ;
 int H0_FIXED_SIZE ;
 size_t H0_HEADER_SIZE_OFFSET ;
 size_t H0_HEADER_SUM_OFFSET ;
 size_t H0_NAME_LEN_OFFSET ;
 int H0_ORIG_SIZE_OFFSET ;
 int UNIX_MODE_IS_SET ;
 unsigned char* __archive_read_ahead (struct archive_read*,int,int *) ;
 int __archive_read_consume (struct archive_read*,int) ;
 void* archive_le16dec (unsigned char const*) ;
 void* archive_le32dec (unsigned char const*) ;
 int archive_set_error (int *,int ,char*) ;
 int archive_strncpy (int *,unsigned char const*,int) ;
 unsigned char lha_calcsum (int ,unsigned char const*,int,int) ;
 void* lha_dos_time (unsigned char const*) ;
 int truncated_error (struct archive_read*) ;

__attribute__((used)) static int
lha_read_file_header_0(struct archive_read *a, struct lha *lha)
{
 const unsigned char *p;
 int extdsize, namelen;
 unsigned char headersum, sum_calculated;

 if ((p = __archive_read_ahead(a, H0_FIXED_SIZE, ((void*)0))) == ((void*)0))
  return (truncated_error(a));
 lha->header_size = p[H0_HEADER_SIZE_OFFSET] + 2;
 headersum = p[H0_HEADER_SUM_OFFSET];
 lha->compsize = archive_le32dec(p + H0_COMP_SIZE_OFFSET);
 lha->origsize = archive_le32dec(p + H0_ORIG_SIZE_OFFSET);
 lha->mtime = lha_dos_time(p + H0_DOS_TIME_OFFSET);
 namelen = p[H0_NAME_LEN_OFFSET];
 extdsize = (int)lha->header_size - H0_FIXED_SIZE - namelen;
 if ((namelen > 221 || extdsize < 0) && extdsize != -2) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Invalid LHa header");
  return (ARCHIVE_FATAL);
 }
 if ((p = __archive_read_ahead(a, lha->header_size, ((void*)0))) == ((void*)0))
  return (truncated_error(a));

 archive_strncpy(&lha->filename, p + H0_FILE_NAME_OFFSET, namelen);

 if (extdsize >= 0) {
  lha->crc = archive_le16dec(p + H0_FILE_NAME_OFFSET + namelen);
  lha->setflag |= CRC_IS_SET;
 }
 sum_calculated = lha_calcsum(0, p, 2, lha->header_size - 2);


 if (extdsize > 0) {



  p += H0_FILE_NAME_OFFSET + namelen + 2;
  if (p[0] == 'U' && extdsize == 12) {

   lha->mtime = archive_le32dec(&p[2]);
   lha->mode = archive_le16dec(&p[6]);
   lha->uid = archive_le16dec(&p[8]);
   lha->gid = archive_le16dec(&p[10]);
   lha->setflag |= UNIX_MODE_IS_SET;
  }
 }
 __archive_read_consume(a, lha->header_size);

 if (sum_calculated != headersum) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "LHa header sum error");
  return (ARCHIVE_FATAL);
 }

 return (ARCHIVE_OK);
}
