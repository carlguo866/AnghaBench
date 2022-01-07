
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lha {unsigned char header_size; size_t compsize; int setflag; int crc; int filename; int mtime; void* origsize; } ;
struct archive_read {int archive; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int CRC_IS_SET ;
 int H1_COMP_SIZE_OFFSET ;
 int H1_DOS_TIME_OFFSET ;
 int H1_FILE_NAME_OFFSET ;
 int H1_FIXED_SIZE ;
 size_t H1_HEADER_SIZE_OFFSET ;
 size_t H1_HEADER_SUM_OFFSET ;
 size_t H1_NAME_LEN_OFFSET ;
 int H1_ORIG_SIZE_OFFSET ;
 unsigned char* __archive_read_ahead (struct archive_read*,int,int *) ;
 int __archive_read_consume (struct archive_read*,int) ;
 int archive_le16dec (unsigned char const*) ;
 void* archive_le32dec (unsigned char const*) ;
 int archive_set_error (int *,int ,char*) ;
 int archive_strncpy (int *,unsigned char const*,int) ;
 unsigned char lha_calcsum (int ,unsigned char const*,int,int) ;
 int lha_dos_time (unsigned char const*) ;
 int lha_read_file_extended_header (struct archive_read*,struct lha*,int *,int,size_t,size_t*) ;
 int truncated_error (struct archive_read*) ;

__attribute__((used)) static int
lha_read_file_header_1(struct archive_read *a, struct lha *lha)
{
 const unsigned char *p;
 size_t extdsize;
 int i, err, err2;
 int namelen, padding;
 unsigned char headersum, sum_calculated;

 err = ARCHIVE_OK;

 if ((p = __archive_read_ahead(a, H1_FIXED_SIZE, ((void*)0))) == ((void*)0))
  return (truncated_error(a));

 lha->header_size = p[H1_HEADER_SIZE_OFFSET] + 2;
 headersum = p[H1_HEADER_SUM_OFFSET];

 lha->compsize = archive_le32dec(p + H1_COMP_SIZE_OFFSET);
 lha->origsize = archive_le32dec(p + H1_ORIG_SIZE_OFFSET);
 lha->mtime = lha_dos_time(p + H1_DOS_TIME_OFFSET);
 namelen = p[H1_NAME_LEN_OFFSET];

 padding = ((int)lha->header_size) - H1_FIXED_SIZE - namelen;

 if (namelen > 230 || padding < 0)
  goto invalid;

 if ((p = __archive_read_ahead(a, lha->header_size, ((void*)0))) == ((void*)0))
  return (truncated_error(a));

 for (i = 0; i < namelen; i++) {
  if (p[i + H1_FILE_NAME_OFFSET] == 0xff)
   goto invalid;
 }
 archive_strncpy(&lha->filename, p + H1_FILE_NAME_OFFSET, namelen);
 lha->crc = archive_le16dec(p + H1_FILE_NAME_OFFSET + namelen);
 lha->setflag |= CRC_IS_SET;

 sum_calculated = lha_calcsum(0, p, 2, lha->header_size - 2);


 __archive_read_consume(a, lha->header_size - 2);


 err2 = lha_read_file_extended_header(a, lha, ((void*)0), 2,
     (size_t)(lha->compsize + 2), &extdsize);
 if (err2 < ARCHIVE_WARN)
  return (err2);
 if (err2 < err)
  err = err2;

 lha->compsize -= extdsize - 2;

 if (lha->compsize < 0)
  goto invalid;

 if (sum_calculated != headersum) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "LHa header sum error");
  return (ARCHIVE_FATAL);
 }
 return (err);
invalid:
 archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
     "Invalid LHa header");
 return (ARCHIVE_FATAL);
}
