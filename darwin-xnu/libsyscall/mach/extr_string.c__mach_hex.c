
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int _mach_strlen (char*) ;
 char* hex ;

__attribute__((used)) static void
_mach_hex(char **buffer, int *length, unsigned long long n)
{
 char buf[32];
 char *cp = buf + sizeof(buf);

 if (n) {
  *--cp = '\0';
  while (n) {
   *--cp = hex[n & 0xf];
   n >>= 4;
  }

  int width = _mach_strlen(cp);
  while (width > 0 && length > 0) {
   *(*buffer)++ = *cp++;
   (*length)--;
   width--;
  }
 }
}
