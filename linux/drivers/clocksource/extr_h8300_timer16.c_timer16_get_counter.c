
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer16_priv {unsigned char ovf; scalar_t__ mapcommon; scalar_t__ mapbase; } ;


 scalar_t__ TCNT ;
 scalar_t__ TISRC ;
 unsigned short ioread16be (scalar_t__) ;
 unsigned char ioread8 (scalar_t__) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long timer16_get_counter(struct timer16_priv *p)
{
 unsigned short v1, v2, v3;
 unsigned char o1, o2;

 o1 = ioread8(p->mapcommon + TISRC) & p->ovf;


 do {
  o2 = o1;
  v1 = ioread16be(p->mapbase + TCNT);
  v2 = ioread16be(p->mapbase + TCNT);
  v3 = ioread16be(p->mapbase + TCNT);
  o1 = ioread8(p->mapcommon + TISRC) & p->ovf;
 } while (unlikely((o1 != o2) || (v1 > v2 && v1 < v3)
     || (v2 > v3 && v2 < v1) || (v3 > v1 && v3 < v2)));

 if (likely(!o1))
  return v2;
 else
  return v2 + 0x10000;
}
