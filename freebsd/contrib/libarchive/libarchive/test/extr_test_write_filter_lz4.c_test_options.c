
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFREG ;
 int ARCHIVE_FILTER_LZ4 ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,size_t) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_filter_code (struct archive*,int ) ;
 int archive_filter_name (struct archive*,int ) ;
 int * archive_liblz4_version () ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,char*,size_t) ;
 int archive_read_support_filter_lz4 (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int archive_write_add_filter_lz4 (struct archive*) ;
 int archive_write_close (struct archive*) ;
 scalar_t__ archive_write_data (struct archive*,char*,size_t) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,char*,size_t,size_t*) ;
 int archive_write_set_bytes_in_last_block (struct archive*,int) ;
 int archive_write_set_bytes_per_block (struct archive*,int) ;
 int archive_write_set_format_ustar (struct archive*) ;
 int archive_write_set_options (struct archive*,char const*) ;
 int assert (int) ;
 int assertA (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualString (char*,int ) ;
 scalar_t__ calloc (int,size_t) ;
 int canLz4 () ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int skipping (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
test_options(const char *options)
{
 struct archive_entry *ae;
 struct archive* a;
 char *buff, *data;
 size_t buffsize, datasize;
 char path[16];
 size_t used1;
 int i, r, use_prog = 0, filecount;

 assert((a = archive_write_new()) != ((void*)0));
 r = archive_write_add_filter_lz4(a);
 if (archive_liblz4_version() == ((void*)0)) {
  if (!canLz4()) {
   skipping("lz4 writing not supported on this platform");
   assertEqualInt(ARCHIVE_WARN, r);
   assertEqualInt(ARCHIVE_OK, archive_write_free(a));
   return;
  } else {
   assertEqualInt(ARCHIVE_WARN, r);
   use_prog = 1;
  }
 } else {
  assertEqualInt(ARCHIVE_OK, r);
 }
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));

 buffsize = 2000000;
 assert(((void*)0) != (buff = (char *)malloc(buffsize)));

 datasize = 10000;
 assert(((void*)0) != (data = (char *)calloc(1, datasize)));
 filecount = 10;




 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_set_format_ustar(a));
 assertEqualIntA(a, (use_prog)?ARCHIVE_WARN:ARCHIVE_OK,
     archive_write_add_filter_lz4(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_set_options(a, options));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_set_bytes_per_block(a, 1024));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_set_bytes_in_last_block(a, 1024));
 assertEqualInt(ARCHIVE_FILTER_LZ4, archive_filter_code(a, 0));
 assertEqualString("lz4", archive_filter_name(a, 0));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_write_open_memory(a, buff, buffsize, &used1));
 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_filetype(ae, AE_IFREG);
 archive_entry_set_size(ae, datasize);
 for (i = 0; i < filecount; i++) {
  sprintf(path, "file%03d", i);
  archive_entry_copy_pathname(ae, path);
  assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
  assertA(datasize
      == (size_t)archive_write_data(a, data, datasize));
 }
 archive_entry_free(ae);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualInt(ARCHIVE_OK, archive_write_free(a));

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 r = archive_read_support_filter_lz4(a);
 if (r == ARCHIVE_WARN) {
  skipping("Can't verify lz4 writing by reading back;"
      " lz4 reading not fully supported on this platform");
 } else {
  assertEqualIntA(a, ARCHIVE_OK,
      archive_read_open_memory(a, buff, used1));
  for (i = 0; i < filecount; i++) {
   sprintf(path, "file%03d", i);
   if (!assertEqualInt(ARCHIVE_OK,
    archive_read_next_header(a, &ae)))
    break;
   assertEqualString(path, archive_entry_pathname(ae));
   assertEqualInt((int)datasize, archive_entry_size(ae));
  }
  assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 }
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));




 free(data);
 free(buff);
}
