
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrgg03_header {int magic1; int size; } ;
typedef int ssize_t ;


 int STORE32_LE (int) ;
 int WRGG03_MAGIC ;
 int close (int) ;
 int erasesize ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int htonl (int ) ;
 char* malloc (int) ;
 int mtd_check_open (char const*) ;
 scalar_t__ mtd_erase_block (int,size_t) ;
 size_t mtdsize ;
 size_t ntohl (int ) ;
 int perror (char*) ;
 int pread (int,char*,int,size_t) ;
 int pwrite (int,char*,int,size_t) ;
 int quiet ;
 int stderr ;
 char* strerror (int ) ;
 int sync () ;
 scalar_t__ wrgg_fix_md5 (struct wrgg03_header*,int,size_t,size_t) ;

int
mtd_fixwrgg(const char *mtd, size_t offset, size_t data_size)
{
 int fd;
 char *first_block;
 ssize_t res;
 size_t block_offset;
 size_t data_offset;
 struct wrgg03_header *shdr;

 if (quiet < 2)
  fprintf(stderr, "Trying to fix WRGG header in %s at 0x%x...\n",
   mtd, offset);

 block_offset = offset & ~(erasesize - 1);
 offset -= block_offset;

 fd = mtd_check_open(mtd);
 if(fd < 0) {
  fprintf(stderr, "Could not open mtd device: %s\n", mtd);
  exit(1);
 }

 if (block_offset + erasesize > mtdsize) {
  fprintf(stderr, "Offset too large, device size 0x%x\n",
   mtdsize);
  exit(1);
 }

 first_block = malloc(erasesize);
 if (!first_block) {
  perror("malloc");
  exit(1);
 }

 res = pread(fd, first_block, erasesize, block_offset);
 if (res != erasesize) {
  perror("pread");
  exit(1);
 }

 shdr = (struct wrgg03_header *)(first_block + offset);
 if (shdr->magic1 != htonl(STORE32_LE(WRGG03_MAGIC))) {
  fprintf(stderr, "magic1 %x\n", shdr->magic1);
  fprintf(stderr, "htonl(WRGG03_MAGIC) %x\n", WRGG03_MAGIC);
  fprintf(stderr, "No WRGG header found\n");
  exit(1);
 } else if (!ntohl(shdr->size)) {
  fprintf(stderr, "WRGG entity with empty image\n");
  exit(1);
 }

 data_offset = offset + sizeof(struct wrgg03_header);
 if (!data_size)
  data_size = mtdsize - data_offset;
 if (data_size > ntohl(shdr->size))
  data_size = ntohl(shdr->size);
 if (wrgg_fix_md5(shdr, fd, data_offset, data_size))
  goto out;

 if (mtd_erase_block(fd, block_offset)) {
  fprintf(stderr, "Can't erease block at 0x%x (%s)\n",
   block_offset, strerror(errno));
  exit(1);
 }

 if (quiet < 2)
  fprintf(stderr, "Rewriting block at 0x%x\n", block_offset);

 if (pwrite(fd, first_block, erasesize, block_offset) != erasesize) {
  fprintf(stderr, "Error writing block (%s)\n", strerror(errno));
  exit(1);
 }

 if (quiet < 2)
  fprintf(stderr, "Done.\n");

out:
 close (fd);
 sync();

 return 0;
}
