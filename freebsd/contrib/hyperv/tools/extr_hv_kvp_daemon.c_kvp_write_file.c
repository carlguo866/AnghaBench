
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EIO ;
 int fprintf (int *,char*,char const*,char const*,char*,char const*) ;

__attribute__((used)) static int
kvp_write_file(FILE *f, const char *s1, const char *s2, const char *s3)
{
 int ret;

 ret = fprintf(f, "%s%s%s%s\n", s1, s2, "=", s3);

 if (ret < 0) {
  return (EIO);
 }

 return (0);
}
