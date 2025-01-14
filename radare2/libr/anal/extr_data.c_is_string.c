
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int IS_PRINTABLE (int const) ;
 int MINLEN ;

__attribute__((used)) static int is_string(const ut8 *buf, int size, int *len) {
 int i;
 if (size < 1) {
  return 0;
 }
 if (size > 3 && buf[0] && !buf[1] && buf[2] && !buf[3]) {
  *len = 1;
  return 2;
 }
 for (i = 0; i < size; i++) {
  if (!buf[i] && i > MINLEN) {
   *len = i;
   return 1;
  }
  if (buf[i] == 10 || buf[i] == 13 || buf[i] == 9) {
   continue;
  }
  if (buf[i] < 32 || buf[i] > 127) {

   return 0;
  }
  if (!IS_PRINTABLE (buf[i])) {
   *len = i;
   return 0;
  }
 }
 *len = i;
 return 1;
}
