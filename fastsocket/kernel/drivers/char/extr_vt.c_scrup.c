
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {unsigned int vc_rows; unsigned int vc_size_row; unsigned int vc_cols; int vc_video_erase_char; scalar_t__ vc_origin; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {scalar_t__ (* con_scroll ) (struct vc_data*,unsigned int,unsigned int,int ,int) ;} ;


 scalar_t__ CON_IS_VISIBLE (struct vc_data*) ;
 int SM_UP ;
 int scr_memmovew (unsigned short*,unsigned short*,unsigned int) ;
 int scr_memsetw (unsigned short*,int ,int) ;
 scalar_t__ stub1 (struct vc_data*,unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static void scrup(struct vc_data *vc, unsigned int t, unsigned int b, int nr)
{
 unsigned short *d, *s;

 if (t+nr >= b)
  nr = b - t - 1;
 if (b > vc->vc_rows || t >= b || nr < 1)
  return;
 if (CON_IS_VISIBLE(vc) && vc->vc_sw->con_scroll(vc, t, b, SM_UP, nr))
  return;
 d = (unsigned short *)(vc->vc_origin + vc->vc_size_row * t);
 s = (unsigned short *)(vc->vc_origin + vc->vc_size_row * (t + nr));
 scr_memmovew(d, s, (b - t - nr) * vc->vc_size_row);
 scr_memsetw(d + (b - t - nr) * vc->vc_cols, vc->vc_video_erase_char,
      vc->vc_size_row * nr);
}
