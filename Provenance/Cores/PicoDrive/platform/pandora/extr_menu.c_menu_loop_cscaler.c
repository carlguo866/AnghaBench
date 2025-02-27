
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scaling; } ;


 unsigned int PBTN_DOWN ;
 unsigned int PBTN_LEFT ;
 unsigned int PBTN_MBACK ;
 unsigned int PBTN_MOK ;
 unsigned int PBTN_R ;
 unsigned int PBTN_RIGHT ;
 unsigned int PBTN_UP ;
 int SCALE_CUSTOM ;
 TYPE_1__ currentConfig ;
 int g_layer_ch ;
 int g_layer_cw ;
 int g_layer_cx ;
 int g_layer_cy ;
 int g_menuscreen_h ;
 int g_menuscreen_ptr ;
 int g_menuscreen_w ;
 unsigned int in_menu_wait (unsigned int,int *,int) ;
 int memset (int ,int ,int) ;
 int menu_draw_begin (int ,int) ;
 int menu_draw_end () ;
 int pnd_restore_layer_data () ;
 int pnd_setup_layer (int,int,int,int,int) ;
 int text_out16 (int,int,char*,int,int) ;

__attribute__((used)) static int menu_loop_cscaler(int id, int keys)
{
 unsigned int inp;

 currentConfig.scaling = SCALE_CUSTOM;

 pnd_setup_layer(1, g_layer_cx, g_layer_cy, g_layer_cw, g_layer_ch);
 pnd_restore_layer_data();

 for (;;)
 {
  menu_draw_begin(0, 1);
  memset(g_menuscreen_ptr, 0, g_menuscreen_w * g_menuscreen_h * 2);
  text_out16(2, 480 - 18, "%dx%d | d-pad to resize, R+d-pad to move", g_layer_cw, g_layer_ch);
  menu_draw_end();

  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT
       |PBTN_R|PBTN_MOK|PBTN_MBACK, ((void*)0), 40);
  if (inp & PBTN_UP) g_layer_cy--;
  if (inp & PBTN_DOWN) g_layer_cy++;
  if (inp & PBTN_LEFT) g_layer_cx--;
  if (inp & PBTN_RIGHT) g_layer_cx++;
  if (!(inp & PBTN_R)) {
   if (inp & PBTN_UP) g_layer_ch += 2;
   if (inp & PBTN_DOWN) g_layer_ch -= 2;
   if (inp & PBTN_LEFT) g_layer_cw += 2;
   if (inp & PBTN_RIGHT) g_layer_cw -= 2;
  }
  if (inp & (PBTN_MOK|PBTN_MBACK))
   break;

  if (inp & (PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT)) {
   if (g_layer_cx < 0) g_layer_cx = 0;
   if (g_layer_cx > 640) g_layer_cx = 640;
   if (g_layer_cy < 0) g_layer_cy = 0;
   if (g_layer_cy > 420) g_layer_cy = 420;
   if (g_layer_cw < 160) g_layer_cw = 160;
   if (g_layer_ch < 60) g_layer_ch = 60;
   if (g_layer_cx + g_layer_cw > 800)
    g_layer_cw = 800 - g_layer_cx;
   if (g_layer_cy + g_layer_ch > 480)
    g_layer_ch = 480 - g_layer_cy;
   pnd_setup_layer(1, g_layer_cx, g_layer_cy, g_layer_cw, g_layer_ch);
  }
 }

 pnd_setup_layer(0, g_layer_cx, g_layer_cy, g_layer_cw, g_layer_ch);

 return 0;
}
