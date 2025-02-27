
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int rbuDeltaGetInt(const char **pz, int *pLen){
  static const signed char zValue[] = {
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1,
    -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
    25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, 36,
    -1, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51,
    52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, -1, -1, -1, 63, -1,
  };
  unsigned int v = 0;
  int c;
  unsigned char *z = (unsigned char*)*pz;
  unsigned char *zStart = z;
  while( (c = zValue[0x7f&*(z++)])>=0 ){
     v = (v<<6) + c;
  }
  z--;
  *pLen -= z - zStart;
  *pz = (char*)z;
  return v;
}
