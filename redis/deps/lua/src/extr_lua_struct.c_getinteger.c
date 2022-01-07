
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int Uinttype ;
typedef int Inttype ;


 int BIG ;

__attribute__((used)) static lua_Number getinteger (const char *buff, int endian,
                        int issigned, int size) {
  Uinttype l = 0;
  int i;
  if (endian == BIG) {
    for (i = 0; i < size; i++) {
      l <<= 8;
      l |= (Uinttype)(unsigned char)buff[i];
    }
  }
  else {
    for (i = size - 1; i >= 0; i--) {
      l <<= 8;
      l |= (Uinttype)(unsigned char)buff[i];
    }
  }
  if (!issigned)
    return (lua_Number)l;
  else {
    Uinttype mask = (Uinttype)(~((Uinttype)0)) << (size*8 - 1);
    if (l & mask)
      l |= mask;
    return (lua_Number)(Inttype)l;
  }
}
