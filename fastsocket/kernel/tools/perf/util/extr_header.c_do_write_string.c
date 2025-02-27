
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int len ;


 int NAME_ALIGN ;
 scalar_t__ PERF_ALIGN (scalar_t__,int ) ;
 int do_write (int,scalar_t__*,int) ;
 scalar_t__ strlen (char const*) ;
 int write_padded (int,char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int do_write_string(int fd, const char *str)
{
 u32 len, olen;
 int ret;

 olen = strlen(str) + 1;
 len = PERF_ALIGN(olen, NAME_ALIGN);


 ret = do_write(fd, &len, sizeof(len));
 if (ret < 0)
  return ret;

 return write_padded(fd, str, olen, len);
}
