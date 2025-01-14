
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nv_sim_state {int pclk_khz; int mclk_khz; int nvclk_khz; int bpp; int memory_type; int memory_width; int mem_latency; int mem_page_miss; int two_heads; } ;
struct nv_fifo_info {int burst; int lwm; } ;
struct nouveau_drm {int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int pci_device; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 int NV04_PFB_CFG0 ;
 int NV04_PFB_CFG1 ;
 scalar_t__ NV_04 ;
 int NV_PEXTDEV_BOOT_0 ;
 int PLL_CORE ;
 int PLL_MEMORY ;
 int ilog2 (int) ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_hw_get_clock (struct drm_device*,int ) ;
 int nv04_calc_arb (struct nv_fifo_info*,struct nv_sim_state*) ;
 int nv10_calc_arb (struct nv_fifo_info*,struct nv_sim_state*) ;
 TYPE_1__* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int ) ;
 int nv_two_heads (struct drm_device*) ;
 int pci_get_bus_and_slot (int ,int) ;
 int pci_read_config_dword (int ,int,int*) ;

__attribute__((used)) static void
nv04_update_arb(struct drm_device *dev, int VClk, int bpp,
  int *burst, int *lwm)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_device *device = nouveau_dev(dev);
 struct nv_fifo_info fifo_data;
 struct nv_sim_state sim_data;
 int MClk = nouveau_hw_get_clock(dev, PLL_MEMORY);
 int NVClk = nouveau_hw_get_clock(dev, PLL_CORE);
 uint32_t cfg1 = nv_rd32(device, NV04_PFB_CFG1);

 sim_data.pclk_khz = VClk;
 sim_data.mclk_khz = MClk;
 sim_data.nvclk_khz = NVClk;
 sim_data.bpp = bpp;
 sim_data.two_heads = nv_two_heads(dev);
 if ((dev->pci_device & 0xffff) == 0x01a0 ||
     (dev->pci_device & 0xffff) == 0x01f0 ) {
  uint32_t type;

  pci_read_config_dword(pci_get_bus_and_slot(0, 1), 0x7c, &type);

  sim_data.memory_type = (type >> 12) & 1;
  sim_data.memory_width = 64;
  sim_data.mem_latency = 3;
  sim_data.mem_page_miss = 10;
 } else {
  sim_data.memory_type = nv_rd32(device, NV04_PFB_CFG0) & 0x1;
  sim_data.memory_width = (nv_rd32(device, NV_PEXTDEV_BOOT_0) & 0x10) ? 128 : 64;
  sim_data.mem_latency = cfg1 & 0xf;
  sim_data.mem_page_miss = ((cfg1 >> 4) & 0xf) + ((cfg1 >> 31) & 0x1);
 }

 if (nv_device(drm->device)->card_type == NV_04)
  nv04_calc_arb(&fifo_data, &sim_data);
 else
  nv10_calc_arb(&fifo_data, &sim_data);

 *burst = ilog2(fifo_data.burst >> 4);
 *lwm = fifo_data.lwm >> 3;
}
