
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {size_t lvdsmanufacturerpointer; int last_script_invoc; int lvds_init_run; scalar_t__ power_off_for_reset; scalar_t__ reset_after_pclk_change; } ;
struct nvbios {int* data; TYPE_1__ fp; } ;
struct nouveau_drm {struct nvbios vbios; int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct dcb_output {int dummy; } ;
typedef enum LVDS_script { ____Placeholder_LVDS_script } LVDS_script ;


 int LVDS_INIT ;
 int LVDS_PANEL_OFF ;
 int LVDS_PANEL_ON ;
 int LVDS_RESET ;
 int NVReadRAMDAC (struct drm_device*,int ,int ) ;
 int NVWriteRAMDAC (struct drm_device*,int ,int ,int) ;
 int NV_INFO (struct nouveau_drm*,char*,int) ;
 int NV_PBUS_POWERCTRL_2 ;
 int NV_PRAMDAC_SEL_CLK ;
 int call_lvds_manufacturer_script (struct drm_device*,struct dcb_output*,int,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int ) ;
 int nv_wr32 (struct nouveau_device*,int ,int ) ;
 int run_lvds_table (struct drm_device*,struct dcb_output*,int,int,int) ;

int call_lvds_script(struct drm_device *dev, struct dcb_output *dcbent, int head, enum LVDS_script script, int pxclk)
{






 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_device *device = nv_device(drm->device);
 struct nvbios *bios = &drm->vbios;
 uint8_t lvds_ver = bios->data[bios->fp.lvdsmanufacturerpointer];
 uint32_t sel_clk_binding, sel_clk;
 int ret;

 if (bios->fp.last_script_invoc == (script << 1 | head) || !lvds_ver ||
     (lvds_ver >= 0x30 && script == LVDS_INIT))
  return 0;

 if (!bios->fp.lvds_init_run) {
  bios->fp.lvds_init_run = 1;
  call_lvds_script(dev, dcbent, head, LVDS_INIT, pxclk);
 }

 if (script == LVDS_PANEL_ON && bios->fp.reset_after_pclk_change)
  call_lvds_script(dev, dcbent, head, LVDS_RESET, pxclk);
 if (script == LVDS_RESET && bios->fp.power_off_for_reset)
  call_lvds_script(dev, dcbent, head, LVDS_PANEL_OFF, pxclk);

 NV_INFO(drm, "Calling LVDS script %d:\n", script);


 sel_clk_binding = nv_rd32(device, NV_PRAMDAC_SEL_CLK) & 0x50000;

 if (lvds_ver < 0x30)
  ret = call_lvds_manufacturer_script(dev, dcbent, head, script);
 else
  ret = run_lvds_table(dev, dcbent, head, script, pxclk);

 bios->fp.last_script_invoc = (script << 1 | head);

 sel_clk = NVReadRAMDAC(dev, 0, NV_PRAMDAC_SEL_CLK) & ~0x50000;
 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_SEL_CLK, sel_clk | sel_clk_binding);

 nv_wr32(device, NV_PBUS_POWERCTRL_2, 0);

 return ret;
}
