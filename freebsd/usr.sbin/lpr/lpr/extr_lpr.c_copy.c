
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int max_blocks; } ;


 int BUFSIZ ;
 int card (char,char const*) ;
 int close (int) ;
 char const* dfname ;
 char format ;
 int inchar ;
 int nact ;
 int ncopies ;
 int nfile (char const*) ;
 int printf (char*,char*,char const*) ;
 char* progname ;
 int read (int,char*,int) ;
 char const* title ;
 int write (int,char*,int) ;

__attribute__((used)) static void
copy(const struct printer *pp, int f, const char n[])
{
 register int fd, i, nr, nc;
 char buf[BUFSIZ];

 if (format == 'p')
  card('T', title ? title : n);
 for (i = 0; i < ncopies; i++)
  card(format, &dfname[inchar-2]);
 card('U', &dfname[inchar-2]);
 card('N', n);
 fd = nfile(dfname);
 nr = nc = 0;
 while ((i = read(f, buf, BUFSIZ)) > 0) {
  if (write(fd, buf, i) != i) {
   printf("%s: %s: temp file write error\n", progname, n);
   break;
  }
  nc += i;
  if (nc >= BUFSIZ) {
   nc -= BUFSIZ;
   nr++;
   if (pp->max_blocks > 0 && nr > pp->max_blocks) {
    printf("%s: %s: copy file is too large\n",
        progname, n);
    break;
   }
  }
 }
 (void) close(fd);
 if (nc==0 && nr==0)
  printf("%s: %s: empty input file\n", progname,
      f ? n : "stdin");
 else
  nact++;
}
