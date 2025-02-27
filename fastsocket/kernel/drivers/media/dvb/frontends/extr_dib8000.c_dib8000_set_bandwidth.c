
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef scalar_t__ timf ;
struct dib8000_state {scalar_t__ timf; int timf_default; } ;


 int dib8000_write_word (struct dib8000_state*,int,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib8000_set_bandwidth(struct dib8000_state *state, u32 bw)
{
 u32 timf;

 if (bw == 0)
  bw = 6000;

 if (state->timf == 0) {
  dprintk("using default timf");
  timf = state->timf_default;
 } else {
  dprintk("using updated timf");
  timf = state->timf;
 }

 dib8000_write_word(state, 29, (u16) ((timf >> 16) & 0xffff));
 dib8000_write_word(state, 30, (u16) ((timf) & 0xffff));

 return 0;
}
