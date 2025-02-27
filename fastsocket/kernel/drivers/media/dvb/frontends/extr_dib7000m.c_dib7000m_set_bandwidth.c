
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef scalar_t__ timf ;
struct dib7000m_state {int current_bandwidth; scalar_t__ timf; int timf_default; } ;


 int dib7000m_write_word (struct dib7000m_state*,int,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib7000m_set_bandwidth(struct dib7000m_state *state, u32 bw)
{
 u32 timf;


 state->current_bandwidth = bw;

 if (state->timf == 0) {
  dprintk( "using default timf");
  timf = state->timf_default;
 } else {
  dprintk( "using updated timf");
  timf = state->timf;
 }

 timf = timf * (bw / 50) / 160;

 dib7000m_write_word(state, 23, (u16) ((timf >> 16) & 0xffff));
 dib7000m_write_word(state, 24, (u16) ((timf ) & 0xffff));

 return 0;
}
