
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct dib8000_state {TYPE_2__* current_agc; } ;
struct TYPE_3__ {scalar_t__ max; scalar_t__ min_thres; scalar_t__ min; scalar_t__ max_thres; } ;
struct TYPE_4__ {TYPE_1__ split; int perform_agc_softsplit; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,scalar_t__) ;

__attribute__((used)) static int dib8000_agc_soft_split(struct dib8000_state *state)
{
 u16 agc, split_offset;

 if (!state->current_agc || !state->current_agc->perform_agc_softsplit || state->current_agc->split.max == 0)
  return 0;


 agc = dib8000_read_word(state, 390);

 if (agc > state->current_agc->split.min_thres)
  split_offset = state->current_agc->split.min;
 else if (agc < state->current_agc->split.max_thres)
  split_offset = state->current_agc->split.max;
 else
  split_offset = state->current_agc->split.max *
   (agc - state->current_agc->split.min_thres) /
   (state->current_agc->split.max_thres - state->current_agc->split.min_thres);

 dprintk("AGC split_offset: %d\n", split_offset);


 dib8000_write_word(state, 107, (dib8000_read_word(state, 107) & 0xff00) | split_offset);
 return 5000;
}
