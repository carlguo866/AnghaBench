
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int err (int,char*) ;
 int expand_number (int ,scalar_t__*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int truncate_one_shm (char*,scalar_t__) ;

__attribute__((used)) static int
truncate_shm(int argc, char **argv)
{
 uint64_t newsize;
 int c, i, ret, ret1;

 newsize = 0;
 while ((c = getopt(argc, argv, "s:")) != -1) {
  switch (c) {
  case 's':
   if (expand_number(optarg, &newsize) == -1)
    err(1, "size:");
   break;
  case '?':
  default:
   return (2);
  }
 }

 argc -= optind;
 argv += optind;
 ret = 0;
 for (i = 0; i < argc; i++) {
  ret1 = truncate_one_shm(argv[i], newsize);
  if (ret1 != 0 && ret == 0)
   ret = ret1;
 }
 return (ret);
}
