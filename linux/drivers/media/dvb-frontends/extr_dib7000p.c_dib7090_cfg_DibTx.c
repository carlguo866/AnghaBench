
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib7090_cfg_DibTx(struct dib7000p_state *state, u32 P_Kin, u32 P_Kout, u32 insertExtSynchro, u32 synchroMode, u32 syncWord, u32 syncSize)
{
 dprintk("Configure DibStream Tx\n");

 dib7000p_write_word(state, 1615, 1);
 dib7000p_write_word(state, 1603, P_Kin);
 dib7000p_write_word(state, 1605, P_Kout);
 dib7000p_write_word(state, 1606, insertExtSynchro);
 dib7000p_write_word(state, 1608, synchroMode);
 dib7000p_write_word(state, 1609, (syncWord >> 16) & 0xffff);
 dib7000p_write_word(state, 1610, syncWord & 0xffff);
 dib7000p_write_word(state, 1612, syncSize);
 dib7000p_write_word(state, 1615, 0);

 return 0;
}
