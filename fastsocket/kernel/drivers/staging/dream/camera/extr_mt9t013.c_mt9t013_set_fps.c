
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct fps_cfg {int fps_div; int f_mult; int pict_fps_div; } ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {int fps_divider; int pict_fps_divider; } ;
struct TYPE_6__ {TYPE_1__* reg_pat; } ;
struct TYPE_5__ {int frame_length_lines; int line_length_pck; } ;


 int CDBG (char*,int,int ) ;
 scalar_t__ EBUSY ;
 int GROUPED_PARAMETER_HOLD ;
 int GROUPED_PARAMETER_UPDATE ;
 int REG_GROUPED_PARAMETER_HOLD ;
 int REG_LINE_LENGTH_PCK ;
 size_t RES_PREVIEW ;
 TYPE_4__* mt9t013_client ;
 TYPE_3__* mt9t013_ctrl ;
 scalar_t__ mt9t013_i2c_write_w (int ,int ,int ) ;
 TYPE_2__ mt9t013_regs ;

__attribute__((used)) static int32_t mt9t013_set_fps(struct fps_cfg *fps)
{

 int32_t rc = 0;

 mt9t013_ctrl->fps_divider = fps->fps_div;
 mt9t013_ctrl->pict_fps_divider = fps->pict_fps_div;

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   REG_GROUPED_PARAMETER_HOLD,
   GROUPED_PARAMETER_HOLD);
 if (rc < 0)
  return -EBUSY;

 CDBG("mt9t013_set_fps: fps_div is %d, frame_rate is %d\n",
   fps->fps_div,
   (uint16_t) (mt9t013_regs.reg_pat[RES_PREVIEW].
      frame_length_lines *
     fps->fps_div/0x00000400));

 CDBG("mt9t013_set_fps: fps_mult is %d, frame_rate is %d\n",
   fps->f_mult,
   (uint16_t)(mt9t013_regs.reg_pat[RES_PREVIEW].
     line_length_pck *
     fps->f_mult / 0x00000400));

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   REG_LINE_LENGTH_PCK,
   (uint16_t) (
   mt9t013_regs.reg_pat[RES_PREVIEW].line_length_pck *
   fps->f_mult / 0x00000400));
 if (rc < 0)
  return rc;

 rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   REG_GROUPED_PARAMETER_HOLD,
   GROUPED_PARAMETER_UPDATE);
 if (rc < 0)
  return rc;

 return rc;
}
