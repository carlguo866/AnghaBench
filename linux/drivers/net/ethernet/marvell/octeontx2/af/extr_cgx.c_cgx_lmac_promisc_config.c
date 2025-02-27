
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgx {int dummy; } ;


 scalar_t__ CGXX_CMRX_RX_DMAC_CAM0 ;
 scalar_t__ CGXX_CMRX_RX_DMAC_CTL0 ;
 int CGX_DMAC_BCAST_MODE ;
 int CGX_DMAC_CAM_ACCEPT ;
 int CGX_DMAC_CAM_ADDR_ENABLE ;
 int CGX_DMAC_MCAST_MODE ;
 struct cgx* cgx_get_pdata (int) ;
 int cgx_read (struct cgx*,int,scalar_t__) ;
 int cgx_write (struct cgx*,int,scalar_t__,int) ;

void cgx_lmac_promisc_config(int cgx_id, int lmac_id, bool enable)
{
 struct cgx *cgx = cgx_get_pdata(cgx_id);
 u64 cfg = 0;

 if (!cgx)
  return;

 if (enable) {

  cfg = cgx_read(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0);
  cfg &= ~(CGX_DMAC_CAM_ACCEPT | CGX_DMAC_MCAST_MODE);
  cfg |= CGX_DMAC_BCAST_MODE;
  cgx_write(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0, cfg);

  cfg = cgx_read(cgx, 0,
          (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8));
  cfg &= ~CGX_DMAC_CAM_ADDR_ENABLE;
  cgx_write(cgx, 0,
     (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8), cfg);
 } else {

  cfg = cgx_read(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0);
  cfg |= CGX_DMAC_CAM_ACCEPT | CGX_DMAC_MCAST_MODE;
  cgx_write(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0, cfg);
  cfg = cgx_read(cgx, 0,
          (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8));
  cfg |= CGX_DMAC_CAM_ADDR_ENABLE;
  cgx_write(cgx, 0,
     (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8), cfg);
 }
}
