
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib7000p_state {int dummy; } ;


 int dib7000p_write_word (struct dib7000p_state*,int,int) ;

__attribute__((used)) static void dib7000p_restart_agc(struct dib7000p_state *state)
{

 dib7000p_write_word(state, 770, (1 << 11) | (1 << 9));
 dib7000p_write_word(state, 770, 0x0000);
}
