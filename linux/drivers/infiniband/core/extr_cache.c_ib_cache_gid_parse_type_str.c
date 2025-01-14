
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 int EINVAL ;
 char const** gid_type_str ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

int ib_cache_gid_parse_type_str(const char *buf)
{
 unsigned int i;
 size_t len;
 int err = -EINVAL;

 len = strlen(buf);
 if (len == 0)
  return -EINVAL;

 if (buf[len - 1] == '\n')
  len--;

 for (i = 0; i < ARRAY_SIZE(gid_type_str); ++i)
  if (gid_type_str[i] && !strncmp(buf, gid_type_str[i], len) &&
      len == strlen(gid_type_str[i])) {
   err = i;
   break;
  }

 return err;
}
