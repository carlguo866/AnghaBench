
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct bwn_mac {int dummy; } ;
struct b2056_inittab_entry {int flags; unsigned int ghz5; unsigned int ghz2; } ;


 int B2056_INITTAB_ENTRY_OK ;
 int B2056_INITTAB_UPLOAD ;
 int BWN_RF_WRITE (struct bwn_mac*,unsigned int,unsigned int) ;

__attribute__((used)) static void b2056_upload_inittab(struct bwn_mac *mac, bool ghz5,
     bool ignore_uploadflag, uint16_t routing,
     const struct b2056_inittab_entry *e,
     unsigned int length)
{
 unsigned int i;
 uint16_t value;

 for (i = 0; i < length; i++, e++) {
  if (!(e->flags & B2056_INITTAB_ENTRY_OK))
   continue;
  if ((e->flags & B2056_INITTAB_UPLOAD) || ignore_uploadflag) {
   if (ghz5)
    value = e->ghz5;
   else
    value = e->ghz2;
   BWN_RF_WRITE(mac, routing | i, value);
  }
 }
}
