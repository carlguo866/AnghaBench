
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* xmalloc (int) ;
 char* xrealloc (char*,int) ;

int utilfdt_read_err_len(const char *filename, char **buffp, off_t *len)
{
 int fd = 0;
 char *buf = ((void*)0);
 off_t bufsize = 1024, offset = 0;
 int ret = 0;

 *buffp = ((void*)0);
 if (strcmp(filename, "-") != 0) {
  fd = open(filename, O_RDONLY);
  if (fd < 0)
   return errno;
 }


 buf = xmalloc(bufsize);
 do {

  if (offset == bufsize) {
   bufsize *= 2;
   buf = xrealloc(buf, bufsize);
  }

  ret = read(fd, &buf[offset], bufsize - offset);
  if (ret < 0) {
   ret = errno;
   break;
  }
  offset += ret;
 } while (ret != 0);


 close(fd);
 if (ret)
  free(buf);
 else
  *buffp = buf;
 *len = bufsize;
 return ret;
}
