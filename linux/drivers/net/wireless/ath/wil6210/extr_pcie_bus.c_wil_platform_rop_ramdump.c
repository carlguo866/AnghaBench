
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wil6210_priv {int dummy; } ;


 int EINVAL ;
 int wil_fw_copy_crash_dump (struct wil6210_priv*,void*,int ) ;

__attribute__((used)) static int wil_platform_rop_ramdump(void *wil_handle, void *buf, uint32_t size)
{
 struct wil6210_priv *wil = wil_handle;

 if (!wil)
  return -EINVAL;

 return wil_fw_copy_crash_dump(wil, buf, size);
}
