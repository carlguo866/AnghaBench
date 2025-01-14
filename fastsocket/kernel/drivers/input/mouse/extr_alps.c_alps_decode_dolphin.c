
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_fields {int first_mp; int is_mp; unsigned char x; unsigned char y; unsigned char z; } ;


 int alps_decode_buttons_v3 (struct alps_fields*,unsigned char*) ;

__attribute__((used)) static void alps_decode_dolphin(struct alps_fields *f, unsigned char *p)
{
 f->first_mp = !!(p[0] & 0x02);
 f->is_mp = !!(p[0] & 0x20);

 f->x = ((p[1] & 0x7f) | ((p[4] & 0x0f) << 7));
 f->y = ((p[2] & 0x7f) | ((p[4] & 0xf0) << 3));
 f->z = (p[0] & 4) ? 0 : p[5] & 0x7f;

 alps_decode_buttons_v3(f, p);
}
