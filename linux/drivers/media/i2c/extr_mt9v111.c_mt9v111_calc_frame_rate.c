
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int numerator; unsigned int denominator; } ;
struct mt9v111_dev {unsigned int sysclk; int vblank; int hblank; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int MT9V111_CORE_R03_WIN_V_OFFS ;
 int MT9V111_CORE_R04_WIN_H_OFFS ;
 unsigned int MT9V111_CORE_R05_MAX_HBLANK ;
 unsigned int MT9V111_CORE_R05_MIN_HBLANK ;
 unsigned int MT9V111_CORE_R06_MAX_VBLANK ;
 unsigned int MT9V111_CORE_R06_MIN_VBLANK ;
 int MT9V111_PIXEL_ARRAY_HEIGHT ;
 int MT9V111_PIXEL_ARRAY_WIDTH ;
 unsigned int abs (unsigned int) ;
 unsigned int* mt9v111_frame_intervals ;
 int v4l2_ctrl_s_ctrl_int64 (int ,unsigned int) ;

__attribute__((used)) static int mt9v111_calc_frame_rate(struct mt9v111_dev *mt9v111,
       struct v4l2_fract *tpf)
{
 unsigned int fps = tpf->numerator ?
      tpf->denominator / tpf->numerator :
      tpf->denominator;
 unsigned int best_diff;
 unsigned int frm_cols;
 unsigned int row_pclk;
 unsigned int best_fps;
 unsigned int pclk;
 unsigned int diff;
 unsigned int idx;
 unsigned int hb;
 unsigned int vb;
 unsigned int i;
 int ret;


 best_diff = ~0L;
 for (i = 0, idx = 0; i < ARRAY_SIZE(mt9v111_frame_intervals); i++) {
  diff = abs(fps - mt9v111_frame_intervals[i]);
  if (diff < best_diff) {
   idx = i;
   best_diff = diff;
  }
 }
 fps = mt9v111_frame_intervals[idx];
 best_fps = vb = hb = 0;
 pclk = DIV_ROUND_CLOSEST(mt9v111->sysclk, 2);
 row_pclk = MT9V111_PIXEL_ARRAY_WIDTH + 7 + MT9V111_CORE_R04_WIN_H_OFFS;
 frm_cols = MT9V111_PIXEL_ARRAY_HEIGHT + 7 + MT9V111_CORE_R03_WIN_V_OFFS;

 best_diff = ~0L;
 for (vb = MT9V111_CORE_R06_MIN_VBLANK;
      vb < MT9V111_CORE_R06_MAX_VBLANK; vb++) {
  for (hb = MT9V111_CORE_R05_MIN_HBLANK;
       hb < MT9V111_CORE_R05_MAX_HBLANK; hb += 10) {
   unsigned int t_frame = (row_pclk + hb) *
            (frm_cols + vb);
   unsigned int t_fps = DIV_ROUND_CLOSEST(pclk, t_frame);

   diff = abs(fps - t_fps);
   if (diff < best_diff) {
    best_diff = diff;
    best_fps = t_fps;

    if (diff == 0)
     break;
   }
  }

  if (diff == 0)
   break;
 }

 ret = v4l2_ctrl_s_ctrl_int64(mt9v111->hblank, hb);
 if (ret)
  return ret;

 ret = v4l2_ctrl_s_ctrl_int64(mt9v111->vblank, vb);
 if (ret)
  return ret;

 tpf->numerator = 1;
 tpf->denominator = best_fps;

 return 0;
}
