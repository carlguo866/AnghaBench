
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stx ;
struct statx {int dummy; } ;


 int AT_FDCWD ;
 int AT_NO_AUTOMOUNT ;
 int AT_STATX_DONT_SYNC ;
 int AT_STATX_FORCE_SYNC ;
 int AT_STATX_SYNC_TYPE ;
 int AT_SYMLINK_NOFOLLOW ;
 unsigned int STATX_ALL ;
 unsigned int STATX_BASIC_STATS ;
 int dump_hex (unsigned long long*,int ,int) ;
 int dump_statx (struct statx*) ;
 int exit (int) ;
 int memset (struct statx*,int,int) ;
 int perror (char*) ;
 int printf (char*,char*,int) ;
 int statx (int ,char*,int,unsigned int,struct statx*) ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char **argv)
{
 struct statx stx;
 int ret, raw = 0, atflag = AT_SYMLINK_NOFOLLOW;

 unsigned int mask = STATX_ALL;

 for (argv++; *argv; argv++) {
  if (strcmp(*argv, "-F") == 0) {
   atflag &= ~AT_STATX_SYNC_TYPE;
   atflag |= AT_STATX_FORCE_SYNC;
   continue;
  }
  if (strcmp(*argv, "-D") == 0) {
   atflag &= ~AT_STATX_SYNC_TYPE;
   atflag |= AT_STATX_DONT_SYNC;
   continue;
  }
  if (strcmp(*argv, "-L") == 0) {
   atflag &= ~AT_SYMLINK_NOFOLLOW;
   continue;
  }
  if (strcmp(*argv, "-O") == 0) {
   mask &= ~STATX_BASIC_STATS;
   continue;
  }
  if (strcmp(*argv, "-A") == 0) {
   atflag |= AT_NO_AUTOMOUNT;
   continue;
  }
  if (strcmp(*argv, "-R") == 0) {
   raw = 1;
   continue;
  }

  memset(&stx, 0xbf, sizeof(stx));
  ret = statx(AT_FDCWD, *argv, atflag, mask, &stx);
  printf("statx(%s) = %d\n", *argv, ret);
  if (ret < 0) {
   perror(*argv);
   exit(1);
  }

  if (raw)
   dump_hex((unsigned long long *)&stx, 0, sizeof(stx));

  dump_statx(&stx);
 }
 return 0;
}
