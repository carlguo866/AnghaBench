
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u16 ;
struct wl1251_acx_ac_cfg {void* txop_limit; void* aifsn; void* cw_max; void* cw_min; void* ac; } ;
struct wl1251 {int dummy; } ;


 int ACX_AC_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1251_acx_ac_cfg*) ;
 struct wl1251_acx_ac_cfg* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct wl1251_acx_ac_cfg*,int) ;
 int wl1251_debug (int ,char*,void*,void*,void*,void*,void*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_ac_cfg(struct wl1251 *wl, u8 ac, u8 cw_min, u16 cw_max,
        u8 aifs, u16 txop)
{
 struct wl1251_acx_ac_cfg *acx;
 int ret = 0;

 wl1251_debug(DEBUG_ACX, "acx ac cfg %d cw_ming %d cw_max %d "
       "aifs %d txop %d", ac, cw_min, cw_max, aifs, txop);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx)
  return -ENOMEM;

 acx->ac = ac;
 acx->cw_min = cw_min;
 acx->cw_max = cw_max;
 acx->aifsn = aifs;
 acx->txop_limit = txop;

 ret = wl1251_cmd_configure(wl, ACX_AC_CFG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("acx ac cfg failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
