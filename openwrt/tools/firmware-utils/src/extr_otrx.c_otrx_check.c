
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trx_header {int version; int crc32; int length; int magic; } ;
typedef struct trx_header uint8_t ;
typedef int uint32_t ;
typedef int hdr ;
typedef int buf ;
typedef int FILE ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int SEEK_SET ;
 scalar_t__ TRX_FLAGS_OFFSET ;
 int TRX_MAGIC ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (struct trx_header*,int,int,int *) ;
 int fseek (int *,scalar_t__,int ) ;
 int le32_to_cpu (int ) ;
 int optind ;
 int otrx_check_parse_options (int,char**) ;
 int otrx_crc32 (int,struct trx_header*,size_t) ;
 int otrx_min (int,size_t) ;
 int printf (char*,int) ;
 int stderr ;
 scalar_t__ trx_offset ;
 char* trx_path ;

__attribute__((used)) static int otrx_check(int argc, char **argv) {
 FILE *trx;
 struct trx_header hdr;
 size_t bytes, length;
 uint8_t buf[1024];
 uint32_t crc32;
 int err = 0;

 if (argc < 3) {
  fprintf(stderr, "No TRX file passed\n");
  err = -EINVAL;
  goto out;
 }
 trx_path = argv[2];

 optind = 3;
 otrx_check_parse_options(argc, argv);

 trx = fopen(trx_path, "r");
 if (!trx) {
  fprintf(stderr, "Couldn't open %s\n", trx_path);
  err = -EACCES;
  goto out;
 }

 fseek(trx, trx_offset, SEEK_SET);
 bytes = fread(&hdr, 1, sizeof(hdr), trx);
 if (bytes != sizeof(hdr)) {
  fprintf(stderr, "Couldn't read %s header\n", trx_path);
  err = -EIO;
  goto err_close;
 }

 if (le32_to_cpu(hdr.magic) != TRX_MAGIC) {
  fprintf(stderr, "Invalid TRX magic: 0x%08x\n", le32_to_cpu(hdr.magic));
  err = -EINVAL;
  goto err_close;
 }

 length = le32_to_cpu(hdr.length);
 if (length < sizeof(hdr)) {
  fprintf(stderr, "Length read from TRX too low (%zu B)\n", length);
  err = -EINVAL;
  goto err_close;
 }

 crc32 = 0xffffffff;
 fseek(trx, trx_offset + TRX_FLAGS_OFFSET, SEEK_SET);
 length -= TRX_FLAGS_OFFSET;
 while ((bytes = fread(buf, 1, otrx_min(sizeof(buf), length), trx)) > 0) {
  crc32 = otrx_crc32(crc32, buf, bytes);
  length -= bytes;
 }

 if (length) {
  fprintf(stderr, "Couldn't read last %zd B of data from %s\n", length, trx_path);
  err = -EIO;
  goto err_close;
 }

 if (crc32 != le32_to_cpu(hdr.crc32)) {
  fprintf(stderr, "Invalid data crc32: 0x%08x instead of 0x%08x\n", crc32, le32_to_cpu(hdr.crc32));
  err = -EINVAL;
  goto err_close;
 }

 printf("Found a valid TRX version %d\n", le32_to_cpu(hdr.version));

err_close:
 fclose(trx);
out:
 return err;
}
