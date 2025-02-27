
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {struct uni_pagedir** vc_uni_pagedir_loc; } ;
struct uni_pagedir {int*** uni_pgdir; } ;


 int MAX_GLYPH ;
 long UNI_DIRECT_BASE ;
 long UNI_DIRECT_MASK ;

int
conv_uni_to_pc(struct vc_data *conp, long ucs)
{
 int h;
 u16 **p1, *p2;
 struct uni_pagedir *p;


 if (ucs > 0xffff)
  return -4;
 else if (ucs < 0x20)
  return -1;
 else if (ucs == 0xfeff || (ucs >= 0x200b && ucs <= 0x200f))
  return -2;





 else if ((ucs & ~UNI_DIRECT_MASK) == UNI_DIRECT_BASE)
  return ucs & UNI_DIRECT_MASK;

 if (!*conp->vc_uni_pagedir_loc)
  return -3;

 p = *conp->vc_uni_pagedir_loc;
 if ((p1 = p->uni_pgdir[ucs >> 11]) &&
     (p2 = p1[(ucs >> 6) & 0x1f]) &&
     (h = p2[ucs & 0x3f]) < MAX_GLYPH)
  return h;

 return -4;
}
