
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef char u_char ;
struct bios_oem_signature {char* anchor; size_t offset; size_t totlen; } ;
struct TYPE_2__ {scalar_t__ from; scalar_t__ to; } ;
struct bios_oem {TYPE_1__ range; struct bios_oem_signature* signature; } ;


 scalar_t__ BIOS_PADDRTOVADDR (scalar_t__) ;
 scalar_t__ BIOS_SIZE ;
 scalar_t__ BIOS_START ;
 int bcmp (char*,char*,size_t) ;
 int printf (char*,char*,size_t,size_t,size_t,size_t,...) ;
 size_t strlen (char*) ;

int
bios_oem_strings(struct bios_oem *oem, u_char *buffer, size_t maxlen)
{
 size_t idx = 0;
 struct bios_oem_signature *sig;
 u_int from, to;
 u_char c, *s, *se, *str, *bios_str;
 size_t i, off, len, tot;

 if ( !oem || !buffer || maxlen<2 )
  return(-1);

 sig = oem->signature;
 if (!sig)
  return(-2);

 from = oem->range.from;
 to = oem->range.to;
 if ( (to<=from) || (from<BIOS_START) || (to>(BIOS_START+BIOS_SIZE)) )
  return(-3);

 while (sig->anchor != ((void*)0)) {
  str = sig->anchor;
  len = strlen(str);
  off = sig->offset;
  tot = sig->totlen;

  if ( (to+off)>(BIOS_START+BIOS_SIZE) ||
     ((from+off)<BIOS_START) ) {
   printf("sys/i386/i386/bios.c: sig '%s' "
    "from 0x%0x to 0x%0x offset %d "
    "out of BIOS bounds 0x%0x - 0x%0x\n",
    str, from, to, off,
    BIOS_START, BIOS_START+BIOS_SIZE);
   return(-4);
  }

  if (idx + tot > maxlen - 1) {
   printf("sys/i386/i386/bios.c: sig '%s' "
    "idx %d + tot %d = %d > maxlen-1 %d\n",
    str, idx, tot, idx+tot, maxlen-1);
   return(-5);
  }
  bios_str = ((void*)0);
  s = (u_char *)BIOS_PADDRTOVADDR(from);
  se = (u_char *)BIOS_PADDRTOVADDR(to-len);
  for (; s<se; s++) {
   if (!bcmp(str, s, len)) {
    bios_str = s;
    break;
   }
  }




  if (bios_str) {
   for (i=0; i<tot; i++) {
    c = bios_str[i+off];
    if ( (c < 0x20) || (c > 0x7E) )
     c = ' ';
    if (idx == 0) {
     if (c != ' ')
      buffer[idx++] = c;
    } else if ( (c != ' ') ||
     ((c == ' ') && (buffer[idx-1] != ' ')) )
      buffer[idx++] = c;
   }
  }
  sig++;
 }

 if ( (idx > 1) && (buffer[idx-1] == ' ') )
  idx--;
 buffer[idx] = '\0';
 return (idx);
}
