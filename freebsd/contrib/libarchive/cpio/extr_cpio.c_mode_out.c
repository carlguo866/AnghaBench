
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lafe_line_reader {int dummy; } ;
struct cpio {int compress; int add_filter; int linkresolver; int * archive; int quiet; scalar_t__ dot; int option_null; int filename; int * passphrase; int bytes_per_block; int format; int * archive_read_disk; scalar_t__ option_follow_links; scalar_t__ option_append; } ;
struct archive_entry {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_linkify (int ,struct archive_entry**,struct archive_entry**) ;
 int archive_entry_linkresolver_free (int ) ;
 int archive_entry_linkresolver_new () ;
 int archive_entry_linkresolver_set_strategy (int ,int ) ;
 int archive_error_string (int *) ;
 int archive_filter_bytes (int *,int ) ;
 int archive_format (int *) ;
 int * archive_read_disk_new () ;
 int archive_read_disk_set_standard_lookup (int *) ;
 int archive_read_disk_set_symlink_logical (int *) ;
 int archive_read_disk_set_symlink_physical (int *) ;
 int archive_write_add_filter_b64encode (int *) ;
 int archive_write_add_filter_bzip2 (int *) ;
 int archive_write_add_filter_compress (int *) ;
 int archive_write_add_filter_grzip (int *) ;
 int archive_write_add_filter_gzip (int *) ;
 int archive_write_add_filter_lrzip (int *) ;
 int archive_write_add_filter_lz4 (int *) ;
 int archive_write_add_filter_lzma (int *) ;
 int archive_write_add_filter_lzop (int *) ;
 int archive_write_add_filter_none (int *) ;
 int archive_write_add_filter_uuencode (int *) ;
 int archive_write_add_filter_xz (int *) ;
 int archive_write_add_filter_zstd (int *) ;
 int archive_write_close (int *) ;
 int archive_write_free (int *) ;
 int * archive_write_new () ;
 int archive_write_open_filename (int *,int ) ;
 int archive_write_set_bytes_per_block (int *,int ) ;
 int archive_write_set_format_by_name (int *,int ) ;
 int archive_write_set_passphrase (int *,int *) ;
 int archive_write_set_passphrase_callback (int *,struct cpio*,int *) ;
 int entry_to_archive (struct cpio*,struct archive_entry*) ;
 int file_to_archive (struct cpio*,char const*) ;
 int fprintf (int ,char*,...) ;
 int lafe_errc (int,int ,char*,...) ;
 struct lafe_line_reader* lafe_line_reader (char*,int ) ;
 int lafe_line_reader_free (struct lafe_line_reader*) ;
 char* lafe_line_reader_next (struct lafe_line_reader*) ;
 int passphrase_callback ;
 int stderr ;

__attribute__((used)) static void
mode_out(struct cpio *cpio)
{
 struct archive_entry *entry, *spare;
 struct lafe_line_reader *lr;
 const char *p;
 int r;

 if (cpio->option_append)
  lafe_errc(1, 0, "Append mode not yet supported.");

 cpio->archive_read_disk = archive_read_disk_new();
 if (cpio->archive_read_disk == ((void*)0))
  lafe_errc(1, 0, "Failed to allocate archive object");
 if (cpio->option_follow_links)
  archive_read_disk_set_symlink_logical(cpio->archive_read_disk);
 else
  archive_read_disk_set_symlink_physical(cpio->archive_read_disk);
 archive_read_disk_set_standard_lookup(cpio->archive_read_disk);

 cpio->archive = archive_write_new();
 if (cpio->archive == ((void*)0))
  lafe_errc(1, 0, "Failed to allocate archive object");
 switch (cpio->compress) {
 case 134:
  r = archive_write_add_filter_grzip(cpio->archive);
  break;
 case 'J':
  r = archive_write_add_filter_xz(cpio->archive);
  break;
 case 133:
  r = archive_write_add_filter_lrzip(cpio->archive);
  break;
 case 132:
  r = archive_write_add_filter_lz4(cpio->archive);
  break;
 case 131:
  r = archive_write_add_filter_lzma(cpio->archive);
  break;
 case 130:
  r = archive_write_add_filter_lzop(cpio->archive);
  break;
 case 128:
  r = archive_write_add_filter_zstd(cpio->archive);
  break;
 case 'j': case 'y':
  r = archive_write_add_filter_bzip2(cpio->archive);
  break;
 case 'z':
  r = archive_write_add_filter_gzip(cpio->archive);
  break;
 case 'Z':
  r = archive_write_add_filter_compress(cpio->archive);
  break;
 default:
  r = archive_write_add_filter_none(cpio->archive);
  break;
 }
 if (r < ARCHIVE_WARN)
  lafe_errc(1, 0, "Requested compression not available");
 switch (cpio->add_filter) {
 case 0:
  r = ARCHIVE_OK;
  break;
 case 135:
  r = archive_write_add_filter_b64encode(cpio->archive);
  break;
 case 129:
  r = archive_write_add_filter_uuencode(cpio->archive);
  break;
 }
 if (r < ARCHIVE_WARN)
  lafe_errc(1, 0, "Requested filter not available");
 r = archive_write_set_format_by_name(cpio->archive, cpio->format);
 if (r != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(cpio->archive));
 archive_write_set_bytes_per_block(cpio->archive, cpio->bytes_per_block);
 cpio->linkresolver = archive_entry_linkresolver_new();
 archive_entry_linkresolver_set_strategy(cpio->linkresolver,
     archive_format(cpio->archive));
 if (cpio->passphrase != ((void*)0))
  r = archive_write_set_passphrase(cpio->archive,
   cpio->passphrase);
 else
  r = archive_write_set_passphrase_callback(cpio->archive, cpio,
   &passphrase_callback);
 if (r != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(cpio->archive));




 r = archive_write_open_filename(cpio->archive, cpio->filename);
 if (r != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(cpio->archive));
 lr = lafe_line_reader("-", cpio->option_null);
 while ((p = lafe_line_reader_next(lr)) != ((void*)0))
  file_to_archive(cpio, p);
 lafe_line_reader_free(lr);





 entry = ((void*)0);
 archive_entry_linkify(cpio->linkresolver, &entry, &spare);
 while (entry != ((void*)0)) {
  entry_to_archive(cpio, entry);
  archive_entry_free(entry);
  entry = ((void*)0);
  archive_entry_linkify(cpio->linkresolver, &entry, &spare);
 }

 r = archive_write_close(cpio->archive);
 if (cpio->dot)
  fprintf(stderr, "\n");
 if (r != ARCHIVE_OK)
  lafe_errc(1, 0, "%s", archive_error_string(cpio->archive));

 if (!cpio->quiet) {
  int64_t blocks =
   (archive_filter_bytes(cpio->archive, 0) + 511)
   / 512;
  fprintf(stderr, "%lu %s\n", (unsigned long)blocks,
      blocks == 1 ? "block" : "blocks");
 }
 archive_write_free(cpio->archive);
 archive_entry_linkresolver_free(cpio->linkresolver);
}
