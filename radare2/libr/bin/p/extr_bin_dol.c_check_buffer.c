
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int tmp ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *buf) {
 ut8 tmp[6];
 int r = r_buf_read_at (buf, 0, tmp, sizeof (tmp));
 bool one = r == sizeof (tmp) && !memcmp (tmp, "\x00\x00\x01\x00\x00\x00", sizeof (tmp));
 if (one) {
  int r = r_buf_read_at (buf, 6, tmp, sizeof (tmp));
  if (r != 6) {
   return 0;
  }
  return sizeof (tmp) && !memcmp (tmp, "\x00\x00\x00\x00\x00\x00", sizeof (tmp));
 }
 return 0;
}
