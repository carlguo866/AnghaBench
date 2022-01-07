
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atol (char const*) ;
 scalar_t__ isalldigit (char const*,size_t) ;
 scalar_t__ isdigit (unsigned char) ;
 int log_err (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char tolower (unsigned char) ;

int
cfg_parse_memsize(const char* str, size_t* res)
{
 size_t len;
 size_t mult = 1;
 if(!str || (len=(size_t)strlen(str)) == 0) {
  log_err("not a size: '%s'", str);
  return 0;
 }
 if(isalldigit(str, len)) {
  *res = (size_t)atol(str);
  return 1;
 }

 while(len>0 && str[len-1]==' ')
  len--;
 if(len > 1 && str[len-1] == 'b')
  len--;
 else if(len > 1 && str[len-1] == 'B')
  len--;

 if(len > 1 && tolower((unsigned char)str[len-1]) == 'g')
  mult = 1024*1024*1024;
 else if(len > 1 && tolower((unsigned char)str[len-1]) == 'm')
  mult = 1024*1024;
 else if(len > 1 && tolower((unsigned char)str[len-1]) == 'k')
  mult = 1024;
 else if(len > 0 && isdigit((unsigned char)str[len-1]))
  mult = 1;
 else {
  log_err("unknown size specifier: '%s'", str);
  return 0;
 }
 while(len>1 && str[len-2]==' ')
  len--;

 if(!isalldigit(str, len-1)) {
  log_err("unknown size specifier: '%s'", str);
  return 0;
 }
 *res = ((size_t)atol(str)) * mult;
 return 1;
}
