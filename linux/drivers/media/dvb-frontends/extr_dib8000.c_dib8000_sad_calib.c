
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dib8000_state {int revision; } ;


 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib8000_sad_calib(struct dib8000_state *state)
{
 u8 sad_sel = 3;

 if (state->revision == 0x8090) {
  dib8000_write_word(state, 922, (sad_sel << 2));
  dib8000_write_word(state, 923, 2048);

  dib8000_write_word(state, 922, (sad_sel << 2) | 0x1);
  dib8000_write_word(state, 922, (sad_sel << 2));
 } else {

  dib8000_write_word(state, 923, (0 << 1) | (0 << 0));
  dib8000_write_word(state, 924, 776);


  dib8000_write_word(state, 923, (1 << 0));
  dib8000_write_word(state, 923, (0 << 0));
 }

 msleep(1);
 return 0;
}
