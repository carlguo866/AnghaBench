
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int width; int parse_length; int* active_map; int modet_word; } ;



__attribute__((used)) static void write_bitmap_word(struct go7007 *go)
{
 int x, y, i, stride = ((go->width >> 4) + 7) >> 3;

 for (i = 0; i < 16; ++i) {
  y = (((go->parse_length - 1) << 3) + i) / (go->width >> 4);
  x = (((go->parse_length - 1) << 3) + i) % (go->width >> 4);
  if (stride * y + (x >> 3) < sizeof(go->active_map))
   go->active_map[stride * y + (x >> 3)] |=
     (go->modet_word & 1) << (x & 0x7);
  go->modet_word >>= 1;
 }
}
