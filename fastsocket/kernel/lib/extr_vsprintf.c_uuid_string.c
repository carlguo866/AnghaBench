
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct printf_spec {int dummy; } ;


 char* pack_hex_byte (char*,int const) ;
 char* string (char*,char*,char*,struct printf_spec) ;
 char toupper (char) ;

__attribute__((used)) static char *uuid_string(char *buf, char *end, const u8 *addr,
    struct printf_spec spec, const char *fmt)
{
 char uuid[sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx")];
 char *p = uuid;
 int i;
 static const u8 be[16] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
 static const u8 le[16] = {3,2,1,0,5,4,7,6,8,9,10,11,12,13,14,15};
 const u8 *index = be;
 bool uc = 0;

 switch (*(++fmt)) {
 case 'L':
  uc = 1;
 case 'l':
  index = le;
  break;
 case 'B':
  uc = 1;
  break;
 }

 for (i = 0; i < 16; i++) {
  p = pack_hex_byte(p, addr[index[i]]);
  switch (i) {
  case 3:
  case 5:
  case 7:
  case 9:
   *p++ = '-';
   break;
  }
 }

 *p = 0;

 if (uc) {
  p = uuid;
  do {
   *p = toupper(*p);
  } while (*(++p));
 }

 return string(buf, end, uuid, spec);
}
