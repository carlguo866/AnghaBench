
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulg ;
typedef int uch ;


 int bytes_out ;
 int crc ;
 int* crc_32_tab ;
 unsigned int outcnt ;
 int* output_data ;
 size_t output_ptr ;
 int* window ;

__attribute__((used)) static void flush_window(void)
{
 ulg c = crc;
 unsigned n;
 uch *in, *out, ch;

 in = window;
 out = &output_data[output_ptr];
 for (n = 0; n < outcnt; n++) {
  ch = *out = *in;
  out++;
  in++;
  c = crc_32_tab[((int)c ^ ch) & 0xff] ^ (c >> 8);
 }
 crc = c;
 bytes_out += (ulg)outcnt;
 output_ptr += (ulg)outcnt;
 outcnt = 0;
}
