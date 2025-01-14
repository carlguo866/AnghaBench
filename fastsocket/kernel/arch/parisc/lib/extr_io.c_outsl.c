
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int le32_to_cpu (unsigned int) ;
 int outl (int ,unsigned long) ;

void outsl (unsigned long port, const void *src, unsigned long count)
{
 unsigned int l = 0, l2;
 const unsigned char *p;

 p = (const unsigned char *)src;

 if (!count)
  return;

 switch (((unsigned long)p) & 0x3)
 {
  case 0x00:
  while (count--)
  {
   outl(le32_to_cpu(*(unsigned int *)p), port);
   p += 4;
  }
  break;

  case 0x02:
  --count;

  l = *(unsigned short *)p;
  p += 2;

  while (count--)
  {
   l2 = *(unsigned int *)p;
   p += 4;
   outl (le32_to_cpu(l << 16 | l2 >> 16), port);
   l = l2;
  }
  l2 = *(unsigned short *)p;
  outl (le32_to_cpu(l << 16 | l2), port);
  break;
  case 0x01:
  --count;

  l = *p << 24;
  p++;
  l |= *(unsigned short *)p << 8;
  p += 2;

  while (count--)
  {
   l2 = *(unsigned int *)p;
   p += 4;
   outl (le32_to_cpu(l | l2 >> 24), port);
   l = l2 << 8;
  }
  l2 = *p;
  outl (le32_to_cpu(l | l2), port);
  break;
  case 0x03:
  --count;

  l = *p << 24;
  p++;

  while (count--)
  {
   l2 = *(unsigned int *)p;
   p += 4;
   outl (le32_to_cpu(l | l2 >> 8), port);
   l = l2 << 24;
  }
  l2 = *(unsigned short *)p << 16;
  p += 2;
  l2 |= *p;
  outl (le32_to_cpu(l | l2), port);
  break;
 }
}
