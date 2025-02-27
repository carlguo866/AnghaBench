
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct stat {int st_size; } ;
typedef int ssize_t ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ ih_hcrc; } ;
typedef TYPE_1__ image_header_t ;


 int IH_PAD_BYTES ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int crc32 (int ,int *,int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ htonl (int ) ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;
 int open (char*,int,...) ;
 char* optarg ;
 int read (int,int *,int) ;
 int stderr ;
 int strtol (char*,int *,int ) ;
 int usage (char*) ;
 int write (int,int *,int) ;

int main(int argc, char *argv[])
{
 struct stat statbuf;
 u_int8_t *filebuf;
 int ifd;
 int ofd;
 ssize_t rsz;
 u_int32_t crc_recalc;
 image_header_t *imgh;
 int opt;
 char *infname = ((void*)0);
 char *outfname = ((void*)0);
 int padsz = IH_PAD_BYTES;
 int ltmp;

 while ((opt = getopt(argc, argv, "i:o:l:")) != -1) {
  switch (opt) {
  case 'i':
   infname = optarg;
   break;
  case 'o':
   outfname = optarg;
   break;
  case 'l':
   ltmp = strtol(optarg, ((void*)0), 0);
   if (ltmp > 0)
    padsz = ltmp;
   break;
  default:
   break;
  }
 }

 if (!infname || !outfname) {
  usage(argv[0]);
  exit(1);
 }

 ifd = open(infname, O_RDONLY);
 if (ifd < 0) {
  fprintf(stderr,
   "could not open input file. (errno = %d)\n", errno);
  exit(1);
 }

 ofd = open(outfname, O_WRONLY | O_CREAT, 0644);
 if (ofd < 0) {
  fprintf(stderr,
   "could not open output file. (errno = %d)\n", errno);
  exit(1);
 }

 if (fstat(ifd, &statbuf) < 0) {
  fprintf(stderr,
   "could not fstat input file. (errno = %d)\n", errno);
  exit(1);
 }

 filebuf = malloc(statbuf.st_size + padsz);
 if (!filebuf) {
  fprintf(stderr, "buffer allocation failed\n");
  exit(1);
 }

 rsz = read(ifd, filebuf, sizeof(*imgh));
 if (rsz != sizeof(*imgh)) {
  fprintf(stderr,
   "could not read input file (errno = %d).\n", errno);
  exit(1);
 }

 memset(&(filebuf[sizeof(*imgh)]), 0, padsz);

 rsz = read(ifd, &(filebuf[sizeof(*imgh) + padsz]),
    statbuf.st_size - sizeof(*imgh));
 if (rsz != (int32_t)(statbuf.st_size - sizeof(*imgh))) {
  fprintf(stderr,
   "could not read input file (errno = %d).\n", errno);
  exit(1);
 }

 imgh = (image_header_t *)filebuf;

 imgh->ih_hcrc = 0;
 crc_recalc = crc32(0, filebuf, sizeof(*imgh) + padsz);
 imgh->ih_hcrc = htonl(crc_recalc);

 rsz = write(ofd, filebuf, statbuf.st_size + padsz);
 if (rsz != (int32_t)statbuf.st_size + padsz) {
  fprintf(stderr,
   "could not write output file (errnor = %d).\n", errno);
  exit(1);
 }

 return 0;
}
