
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 size_t INT_MAX ;
 size_t MIN (int,size_t) ;
 int SA_RESTART ;
 size_t SIZE_MAX ;
 size_t SSIZE_MAX ;
 scalar_t__ errno ;
 scalar_t__ read (int,char*,size_t) ;

size_t
block_read (int fd, char *buf, size_t nbytes)
{
  char *bp = buf;
  char const *buflim = buf + nbytes;
  size_t readlim = SSIZE_MAX;

  do
    {
      size_t bytes_to_read = MIN (buflim - bp, readlim);
      ssize_t nread = read (fd, bp, bytes_to_read);
      if (nread <= 0)
 {
   if (nread == 0)
     break;



   if (errno == EINVAL && INT_MAX < bytes_to_read)
     {
       readlim = INT_MAX;
       continue;
     }






   if (! SA_RESTART && errno == EINTR)
     continue;

   return SIZE_MAX;
 }
      bp += nread;
    }
  while (bp < buflim);

  return bp - buf;
}
