
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_uint8_t ;
typedef int isc_uint32_t ;
struct TYPE_5__ {int pool; } ;
typedef TYPE_1__ isc_entropy_t ;


 int add_entropy (TYPE_1__*,int) ;
 int entropypool_add_word (int *,int) ;
 int subtract_pseudo (TYPE_1__*,int) ;

__attribute__((used)) static void
entropypool_adddata(isc_entropy_t *ent, void *p, unsigned int len,
      isc_uint32_t entropy)
{
 isc_uint32_t val;
 unsigned long addr;
 isc_uint8_t *buf;

 addr = (unsigned long)p;
 buf = p;

 if ((addr & 0x03U) != 0U) {
  val = 0;
  switch (len) {
  case 3:
   val = *buf++;
   len--;
  case 2:
   val = val << 8 | *buf++;
   len--;
  case 1:
   val = val << 8 | *buf++;
   len--;
  }

  entropypool_add_word(&ent->pool, val);
 }

 for (; len > 3; len -= 4) {
  val = *((isc_uint32_t *)buf);

  entropypool_add_word(&ent->pool, val);
  buf += 4;
 }

 if (len != 0) {
  val = 0;
  switch (len) {
  case 3:
   val = *buf++;
  case 2:
   val = val << 8 | *buf++;
  case 1:
   val = val << 8 | *buf++;
  }

  entropypool_add_word(&ent->pool, val);
 }

 add_entropy(ent, entropy);
 subtract_pseudo(ent, entropy);
}
