
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_width; int v_height; } ;


 unsigned int kDataBack ;
 int kProgressBarCapWidth ;
 int kProgressBarHeight ;
 int kProgressBarWidth ;
 unsigned char*** progressmeter_leftcap ;
 unsigned char*** progressmeter_middle ;
 unsigned char*** progressmeter_rightcap ;
 int vc_blit_rect (int,int,int,int,int,int,int,unsigned char const*,int ,unsigned int) ;
 int vc_progress_withmeter ;
 int vc_progressmeter_backbuffer ;
 int vc_uiscale ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
vc_draw_progress_meter(unsigned int flags, int x1, int x2, int x3)
{
    const unsigned char * data;
    int x, w;
    int ox, oy;
    int endCapPos;
    int onoff;

    int style = (0 == (2 & vc_progress_withmeter));

    ox = ((vinfo.v_width - (kProgressBarWidth * vc_uiscale)) / 2);
    oy = vinfo.v_height - (vinfo.v_height / 3) - ((kProgressBarHeight * vc_uiscale) / 2);

    if (kDataBack == flags)
    {

 vc_blit_rect(ox + x1, oy, x1,
      x2, (kProgressBarHeight * vc_uiscale), 0, (kProgressBarWidth * vc_uiscale),
      ((void*)0), vc_progressmeter_backbuffer, flags);
 return;
    }

    for (x = x1; x < x2; x += w)
    {
 onoff = (x < x3);
 endCapPos = ((style && onoff) ? x3 : (kProgressBarWidth * vc_uiscale));
 if (x < (kProgressBarCapWidth * vc_uiscale))
 {
     if (x2 < (kProgressBarCapWidth * vc_uiscale))
  w = x2 - x;
     else
  w = (kProgressBarCapWidth * vc_uiscale) - x;
     data = progressmeter_leftcap[vc_uiscale >= 2][onoff];
     data += x;
     vc_blit_rect(ox + x, oy, x, w,
       (kProgressBarHeight * vc_uiscale),
       (kProgressBarCapWidth * vc_uiscale),
       (kProgressBarWidth * vc_uiscale),
       data, vc_progressmeter_backbuffer, flags);
 }
 else if (x < (endCapPos - (kProgressBarCapWidth * vc_uiscale)))
 {
     if (x2 < (endCapPos - (kProgressBarCapWidth * vc_uiscale)))
  w = x2 - x;
     else
  w = (endCapPos - (kProgressBarCapWidth * vc_uiscale)) - x;
     data = progressmeter_middle[vc_uiscale >= 2][onoff];
     vc_blit_rect(ox + x, oy, x, w,
       (kProgressBarHeight * vc_uiscale),
       1,
       (kProgressBarWidth * vc_uiscale),
       data, vc_progressmeter_backbuffer, flags);
 }
 else
 {
     w = endCapPos - x;
     data = progressmeter_rightcap[vc_uiscale >= 2][onoff];
     data += x - (endCapPos - (kProgressBarCapWidth * vc_uiscale));
     vc_blit_rect(ox + x, oy, x, w,
       (kProgressBarHeight * vc_uiscale),
       (kProgressBarCapWidth * vc_uiscale),
       (kProgressBarWidth * vc_uiscale),
       data, vc_progressmeter_backbuffer, flags);
 }
    }
}
