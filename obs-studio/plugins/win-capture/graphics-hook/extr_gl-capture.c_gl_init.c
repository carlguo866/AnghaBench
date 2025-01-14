
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int base_cx; int base_cy; int using_shtex; int cx; int cy; scalar_t__ using_scale; int shmem_fallback; int format; int hdc; } ;
struct TYPE_6__ {int cx; int cy; int force_shmem; scalar_t__ use_scale; } ;
struct TYPE_5__ {int right; int bottom; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;


 int DXGI_FORMAT_B8G8R8A8_UNORM ;
 int GetClientRect (int ,TYPE_1__*) ;
 int INIT_FAILED ;
 int INIT_SHTEX_FAILED ;
 int INIT_SUCCESS ;
 int WindowFromDC (int ) ;
 scalar_t__ darkest_dungeon_fix ;
 TYPE_3__ data ;
 int gl_free () ;
 int gl_shmem_init (int ) ;
 int gl_shtex_init (int ) ;
 TYPE_2__* global_hook_info ;
 scalar_t__ nv_capture_available ;

__attribute__((used)) static int gl_init(HDC hdc)
{
 HWND window = WindowFromDC(hdc);
 int ret = INIT_FAILED;
 bool success = 0;
 RECT rc = {0};

 if (darkest_dungeon_fix) {
  data.base_cx = 1920;
  data.base_cy = 1080;
 } else {
  GetClientRect(window, &rc);
  data.base_cx = rc.right;
  data.base_cy = rc.bottom;
 }

 data.hdc = hdc;
 data.format = DXGI_FORMAT_B8G8R8A8_UNORM;
 data.using_scale = global_hook_info->use_scale;
 data.using_shtex = nv_capture_available &&
      !global_hook_info->force_shmem &&
      !data.shmem_fallback;

 if (data.using_scale) {
  data.cx = global_hook_info->cx;
  data.cy = global_hook_info->cy;
 } else {
  data.cx = data.base_cx;
  data.cy = data.base_cy;
 }

 if (data.using_shtex) {
  success = gl_shtex_init(window);
  if (!success)
   ret = INIT_SHTEX_FAILED;
 } else {
  success = gl_shmem_init(window);
 }

 if (!success)
  gl_free();
 else
  ret = INIT_SUCCESS;

 return ret;
}
