
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct ov7670_win_size {unsigned char com7_bit; TYPE_1__* regs; int vstop; int vstart; int hstop; int hstart; } ;
struct ov7670_info {unsigned char clkrc; struct ov7670_format_struct* fmt; } ;
struct ov7670_format_struct {TYPE_1__* regs; } ;
struct TYPE_2__ {unsigned char value; } ;


 int REG_CLKRC ;
 int REG_COM7 ;
 int ov7670_set_hw (struct v4l2_subdev*,int ,int ,int ,int ) ;
 int ov7670_try_fmt_internal (struct v4l2_subdev*,struct v4l2_mbus_framefmt*,struct ov7670_format_struct**,struct ov7670_win_size**) ;
 int ov7670_write (struct v4l2_subdev*,int ,unsigned char) ;
 int ov7670_write_array (struct v4l2_subdev*,TYPE_1__*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_s_mbus_fmt(struct v4l2_subdev *sd,
     struct v4l2_mbus_framefmt *fmt)
{
 struct ov7670_format_struct *ovfmt;
 struct ov7670_win_size *wsize;
 struct ov7670_info *info = to_state(sd);
 unsigned char com7;
 int ret;

 ret = ov7670_try_fmt_internal(sd, fmt, &ovfmt, &wsize);

 if (ret)
  return ret;






 com7 = ovfmt->regs[0].value;
 com7 |= wsize->com7_bit;
 ov7670_write(sd, REG_COM7, com7);



 ov7670_write_array(sd, ovfmt->regs + 1);
 ov7670_set_hw(sd, wsize->hstart, wsize->hstop, wsize->vstart,
   wsize->vstop);
 ret = 0;
 if (wsize->regs)
  ret = ov7670_write_array(sd, wsize->regs);
 info->fmt = ovfmt;
 if (ret == 0)
  ret = ov7670_write(sd, REG_CLKRC, info->clkrc);
 return 0;
}
