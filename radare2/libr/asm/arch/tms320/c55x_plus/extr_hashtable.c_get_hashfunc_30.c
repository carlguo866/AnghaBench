
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_30(st32 arg1, st32 arg2) {
 st32 v2;
 st32 v3;
 st32 result;

 v2 = arg2;
 v3 = v2 & 0x18000;
 if ( v3 ) {
  if ( v3 == 32768 ) {
   result = 303;
  } else {
   if (v3 == 65536) {
    result = 304;
   } else {
    result = arg1;
   }
  }
 } else {
  result = 302;
 }
 return result;
}
