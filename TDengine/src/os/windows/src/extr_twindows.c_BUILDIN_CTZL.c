
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int32_t ;


 int _BitScanForward64 (unsigned long*,int ) ;

int32_t BUILDIN_CTZL(uint64_t val) {
  unsigned long r = 0;
  _BitScanForward64(&r, val);
  return (int)(r >> 3);
}
