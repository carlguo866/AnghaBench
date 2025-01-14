
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_variant {int h_scale_down_max; int v_scale_down_max; int h_scale_up_max; int v_scale_up_max; } ;


 int EINVAL ;

__attribute__((used)) static int mtk_mdp_check_scaler_ratio(struct mtk_mdp_variant *var, int src_w,
          int src_h, int dst_w, int dst_h, int rot)
{
 int tmp_w, tmp_h;

 if (rot == 90 || rot == 270) {
  tmp_w = dst_h;
  tmp_h = dst_w;
 } else {
  tmp_w = dst_w;
  tmp_h = dst_h;
 }

 if ((src_w / tmp_w) > var->h_scale_down_max ||
     (src_h / tmp_h) > var->v_scale_down_max ||
     (tmp_w / src_w) > var->h_scale_up_max ||
     (tmp_h / src_h) > var->v_scale_up_max)
  return -EINVAL;

 return 0;
}
