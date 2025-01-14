
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int x; int y; int btn_l; int btn_m; int btn_r; int btn_b4; int btn_b5; int whl_d; int whl_u; int dlt_y; int dlt_x; } ;
typedef TYPE_1__ winraw_mouse_t ;
struct TYPE_10__ {int x; int y; } ;
struct TYPE_9__ {int usFlags; int lLastX; int lLastY; int usButtonFlags; scalar_t__ usButtonData; } ;
typedef scalar_t__ SHORT ;
typedef TYPE_2__ RAWMOUSE ;
typedef TYPE_3__ POINT ;
typedef void* LONG ;
typedef int HWND ;


 int GetCursorPos (TYPE_3__*) ;
 int GetLastError () ;
 int InterlockedExchange (int *,int) ;
 int InterlockedExchangeAdd (int *,int) ;
 int MOUSE_MOVE_ABSOLUTE ;
 int RARCH_WARN (char*,int ) ;
 int RI_MOUSE_BUTTON_4_DOWN ;
 int RI_MOUSE_BUTTON_4_UP ;
 int RI_MOUSE_BUTTON_5_DOWN ;
 int RI_MOUSE_BUTTON_5_UP ;
 int RI_MOUSE_LEFT_BUTTON_DOWN ;
 int RI_MOUSE_LEFT_BUTTON_UP ;
 int RI_MOUSE_MIDDLE_BUTTON_DOWN ;
 int RI_MOUSE_MIDDLE_BUTTON_UP ;
 int RI_MOUSE_RIGHT_BUTTON_DOWN ;
 int RI_MOUSE_RIGHT_BUTTON_UP ;
 int RI_MOUSE_WHEEL ;
 int ScreenToClient (int ,TYPE_3__*) ;
 scalar_t__ g_mouse_xy_mapping_ready ;
 int g_view_abs_ratio_x ;
 int g_view_abs_ratio_y ;
 scalar_t__ video_driver_window_get () ;
 int winraw_init_mouse_xy_mapping () ;

__attribute__((used)) static void winraw_update_mouse_state(winraw_mouse_t *mouse, RAWMOUSE *state)
{
   POINT crs_pos;

   if (state->usFlags & MOUSE_MOVE_ABSOLUTE)
   {
      if (g_mouse_xy_mapping_ready)
      {
         state->lLastX = (LONG)(g_view_abs_ratio_x * state->lLastX);
         state->lLastY = (LONG)(g_view_abs_ratio_y * state->lLastY);
         InterlockedExchangeAdd(&mouse->dlt_x, state->lLastX - mouse->x);
         InterlockedExchangeAdd(&mouse->dlt_y, state->lLastY - mouse->y);
         mouse->x = state->lLastX;
         mouse->y = state->lLastY;
      }
      else
         winraw_init_mouse_xy_mapping();
   }
   else if (state->lLastX || state->lLastY)
   {
      InterlockedExchangeAdd(&mouse->dlt_x, state->lLastX);
      InterlockedExchangeAdd(&mouse->dlt_y, state->lLastY);

      if (!GetCursorPos(&crs_pos))
      {
         RARCH_WARN("[WINRAW]: GetCursorPos failed with error %lu.\n", GetLastError());
      }
      else if (!ScreenToClient((HWND)video_driver_window_get(), &crs_pos))
      {
         RARCH_WARN("[WINRAW]: ScreenToClient failed with error %lu.\n", GetLastError());
      }
      else
      {
         mouse->x = crs_pos.x;
         mouse->y = crs_pos.y;
      }
   }

   if (state->usButtonFlags & RI_MOUSE_LEFT_BUTTON_DOWN)
      mouse->btn_l = 1;
   else if (state->usButtonFlags & RI_MOUSE_LEFT_BUTTON_UP)
      mouse->btn_l = 0;

   if (state->usButtonFlags & RI_MOUSE_MIDDLE_BUTTON_DOWN)
      mouse->btn_m = 1;
   else if (state->usButtonFlags & RI_MOUSE_MIDDLE_BUTTON_UP)
      mouse->btn_m = 0;

   if (state->usButtonFlags & RI_MOUSE_RIGHT_BUTTON_DOWN)
      mouse->btn_r = 1;
   else if (state->usButtonFlags & RI_MOUSE_RIGHT_BUTTON_UP)
      mouse->btn_r = 0;

   if (state->usButtonFlags & RI_MOUSE_BUTTON_4_DOWN)
      mouse->btn_b4 = 1;
   else if (state->usButtonFlags & RI_MOUSE_BUTTON_4_UP)
      mouse->btn_b4 = 0;

   if (state->usButtonFlags & RI_MOUSE_BUTTON_5_DOWN)
      mouse->btn_b5 = 1;
   else if (state->usButtonFlags & RI_MOUSE_BUTTON_5_UP)
      mouse->btn_b5 = 0;

   if (state->usButtonFlags & RI_MOUSE_WHEEL)
   {
      if ((SHORT)state->usButtonData > 0)
         InterlockedExchange(&mouse->whl_u, 1);
      else if ((SHORT)state->usButtonData < 0)
         InterlockedExchange(&mouse->whl_d, 1);
   }
}
