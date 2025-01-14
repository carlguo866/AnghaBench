
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct gate_descriptor {scalar_t__ gd_type; int gd_looffset; uintptr_t gd_hioffset; } ;


 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int NIDT ;
 uintptr_t PMAP_TRM_MAX_ADDRESS ;
 uintptr_t PMAP_TRM_MIN_ADDRESS ;
 scalar_t__ SDT_SYS386IGT ;
 scalar_t__ SDT_SYS386TGT ;
 scalar_t__ end_exceptions ;
 struct gate_descriptor* idt ;
 scalar_t__ setidt_disp ;
 scalar_t__ start_exceptions ;

__attribute__((used)) static void
fixup_idt(void)
{
 struct gate_descriptor *ip;
 uintptr_t off;
 int x;

 for (x = 0; x < NIDT; x++) {
  ip = &idt[x];
  if (ip->gd_type != SDT_SYS386IGT &&
      ip->gd_type != SDT_SYS386TGT)
   continue;
  off = ip->gd_looffset + (((u_int)ip->gd_hioffset) << 16);
  KASSERT(off >= (uintptr_t)start_exceptions &&
      off < (uintptr_t)end_exceptions,
      ("IDT[%d] type %d off %#x", x, ip->gd_type, off));
  off += setidt_disp;
  MPASS(off >= PMAP_TRM_MIN_ADDRESS &&
      off < PMAP_TRM_MAX_ADDRESS);
  ip->gd_looffset = off;
  ip->gd_hioffset = off >> 16;
 }
}
