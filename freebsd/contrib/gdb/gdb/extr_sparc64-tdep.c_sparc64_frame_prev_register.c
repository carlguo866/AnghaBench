
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_frame_cache {int base; scalar_t__ frameless_p; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 int BIAS ;
 int SPARC64_NPC_REGNUM ;
 int SPARC64_PC_REGNUM ;
 int SPARC_I0_REGNUM ;
 int SPARC_I7_REGNUM ;
 int SPARC_L0_REGNUM ;
 int SPARC_O0_REGNUM ;
 int SPARC_O7_REGNUM ;
 int frame_register_unwind (struct frame_info*,int,int*,int*,int*,int*,void*) ;
 scalar_t__ frame_unwind_register_unsigned (struct frame_info*,int) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 int lval_memory ;
 int not_lval ;
 int read_memory (int,void*,int ) ;
 int register_size (struct gdbarch*,int) ;
 struct sparc_frame_cache* sparc64_frame_cache (struct frame_info*,void**) ;
 int store_unsigned_integer (void*,int,int) ;

__attribute__((used)) static void
sparc64_frame_prev_register (struct frame_info *next_frame, void **this_cache,
        int regnum, int *optimizedp,
        enum lval_type *lvalp, CORE_ADDR *addrp,
        int *realnump, void *valuep)
{
  struct sparc_frame_cache *cache =
    sparc64_frame_cache (next_frame, this_cache);

  if (regnum == SPARC64_PC_REGNUM || regnum == SPARC64_NPC_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (valuep)
 {
   CORE_ADDR pc = (regnum == SPARC64_NPC_REGNUM) ? 4 : 0;

   regnum = cache->frameless_p ? SPARC_O7_REGNUM : SPARC_I7_REGNUM;
   pc += frame_unwind_register_unsigned (next_frame, regnum) + 8;
   store_unsigned_integer (valuep, 8, pc);
 }
      return;
    }



  if (!cache->frameless_p
      && regnum >= SPARC_L0_REGNUM && regnum <= SPARC_I7_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = cache->base + BIAS + (regnum - SPARC_L0_REGNUM) * 8;
      *realnump = -1;
      if (valuep)
 {
   struct gdbarch *gdbarch = get_frame_arch (next_frame);


   read_memory (*addrp, valuep, register_size (gdbarch, regnum));
 }
      return;
    }



  if (!cache->frameless_p
      && regnum >= SPARC_O0_REGNUM && regnum <= SPARC_O7_REGNUM)
    regnum += (SPARC_I0_REGNUM - SPARC_O0_REGNUM);

  frame_register_unwind (next_frame, regnum,
    optimizedp, lvalp, addrp, realnump, valuep);
}
