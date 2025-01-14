
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int BFLAG ;
 int IFLAG ;
 int KFLAG ;
 int MFLAG ;
 int NFLAG ;
 int PFLAG ;
 int RFLAG ;
 int SFLAG ;
 int UFLAG ;
 int VFLAG ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int print_uname (int) ;
 int setup_get () ;
 int usage () ;

int
main(int argc, char *argv[])
{
 u_int flags;
 int ch;

 setup_get();
 flags = 0;

 while ((ch = getopt(argc, argv, "abiKmnoprsUv")) != -1)
  switch(ch) {
  case 'a':
   flags |= (MFLAG | NFLAG | RFLAG | SFLAG | VFLAG);
   break;
  case 'b':
   flags |= BFLAG;
   break;
  case 'i':
   flags |= IFLAG;
   break;
  case 'K':
   flags |= KFLAG;
   break;
  case 'm':
   flags |= MFLAG;
   break;
  case 'n':
   flags |= NFLAG;
   break;
  case 'p':
   flags |= PFLAG;
   break;
  case 'r':
   flags |= RFLAG;
   break;
  case 's':
  case 'o':
   flags |= SFLAG;
   break;
  case 'U':
   flags |= UFLAG;
   break;
  case 'v':
   flags |= VFLAG;
   break;
  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc)
  usage();

 if (!flags)
  flags |= SFLAG;

 print_uname(flags);
 exit(0);
}
