
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vc_gencmd_send (char*,char*) ;

__attribute__((used)) static void dispmanx_set_scaling (bool bilinear_filter)
{
   if (bilinear_filter)
      vc_gencmd_send("%s", "scaling_kernel 0 -2 -6 -8 -10 -8 -3 2 18 50 82 119 155 187 213 227 227 213 187 155 119 82 50 18 2 -3 -8 -10 -8 -6 -2 0 0");
   else
      vc_gencmd_send("%s", "scaling_kernel 0 0 0 0 0 0 0 0 1 1 1 1 255 255 255 255 255 255 255 255 1 1 1 1 0 0 0 0 0 0 0 0 1");
}
