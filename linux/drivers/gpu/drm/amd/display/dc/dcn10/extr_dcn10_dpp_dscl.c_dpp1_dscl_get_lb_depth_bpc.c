
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lb_pixel_depth { ____Placeholder_lb_pixel_depth } lb_pixel_depth ;


 int BREAK_TO_DEBUGGER () ;
 int LB_PIXEL_DEPTH_18BPP ;
 int LB_PIXEL_DEPTH_24BPP ;
 int LB_PIXEL_DEPTH_30BPP ;
 int LB_PIXEL_DEPTH_36BPP ;

__attribute__((used)) static int dpp1_dscl_get_lb_depth_bpc(enum lb_pixel_depth depth)
{
 if (depth == LB_PIXEL_DEPTH_30BPP)
  return 10;
 else if (depth == LB_PIXEL_DEPTH_24BPP)
  return 8;
 else if (depth == LB_PIXEL_DEPTH_18BPP)
  return 6;
 else if (depth == LB_PIXEL_DEPTH_36BPP)
  return 12;
 else {
  BREAK_TO_DEBUGGER();
  return -1;
 }
}
