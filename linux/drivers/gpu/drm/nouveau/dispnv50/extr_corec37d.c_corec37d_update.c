
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_core {int chan; } ;


 int NV50_DISP_CORE_NTFY ;
 size_t NV50_DISP_INTERLOCK_CURS ;
 size_t NV50_DISP_INTERLOCK_WNDW ;
 int evo_data (int*,int) ;
 int evo_kick (int*,int *) ;
 int evo_mthd (int*,int,int) ;
 int* evo_wait (int *,int) ;

void
corec37d_update(struct nv50_core *core, u32 *interlock, bool ntfy)
{
 u32 *push;
 if ((push = evo_wait(&core->chan, 9))) {
  if (ntfy) {
   evo_mthd(push, 0x020c, 1);
   evo_data(push, 0x00001000 | NV50_DISP_CORE_NTFY);
  }

  evo_mthd(push, 0x0218, 2);
  evo_data(push, interlock[NV50_DISP_INTERLOCK_CURS]);
  evo_data(push, interlock[NV50_DISP_INTERLOCK_WNDW]);
  evo_mthd(push, 0x0200, 1);
  evo_data(push, 0x00000001);

  if (ntfy) {
   evo_mthd(push, 0x020c, 1);
   evo_data(push, 0x00000000);
  }
  evo_kick(push, &core->chan);
 }
}
