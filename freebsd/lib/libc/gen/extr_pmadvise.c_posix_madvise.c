
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int madvise (void*,size_t,int) ;

int
posix_madvise(void *address, size_t size, int how)
{
 int ret, saved_errno;

 saved_errno = errno;
 if (madvise(address, size, how) == -1) {
  ret = errno;
  errno = saved_errno;
 } else {
  ret = 0;
 }
 return (ret);
}
