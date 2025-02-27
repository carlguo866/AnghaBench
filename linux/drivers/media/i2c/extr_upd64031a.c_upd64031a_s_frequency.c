
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;
struct upd64031a_state {int* regs; } ;


 size_t R00 ;
 int debug ;
 struct upd64031a_state* to_state (struct v4l2_subdev*) ;
 int upd64031a_write (struct v4l2_subdev*,size_t,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int upd64031a_s_frequency(struct v4l2_subdev *sd, const struct v4l2_frequency *freq)
{
 struct upd64031a_state *state = to_state(sd);
 u8 reg = state->regs[R00];

 v4l2_dbg(1, debug, sd, "changed input or channel\n");
 upd64031a_write(sd, R00, reg | 0x10);
 upd64031a_write(sd, R00, reg & ~0x10);
 return 0;
}
