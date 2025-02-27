
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zatm_vcc {unsigned short rx_chan; unsigned short pool; } ;
struct zatm_dev {int lock; struct atm_vcc** rx_map; } ;
struct TYPE_3__ {scalar_t__ traffic_class; int max_sdu; } ;
struct TYPE_4__ {scalar_t__ aal; TYPE_1__ rxtp; } ;
struct atm_vcc {TYPE_2__ qos; int dev; } ;


 scalar_t__ ATM_AAL5 ;
 scalar_t__ ATM_AAL5_TRAILER ;
 int ATM_CELL_PAYLOAD ;
 scalar_t__ ATM_NONE ;
 int CER ;
 int CMR ;
 int DIV_ROUND_UP (scalar_t__,int) ;
 int DPRINTK (char*,unsigned short,...) ;
 int EAGAIN ;
 int EMSGSIZE ;
 unsigned short VC_SIZE ;
 unsigned short ZATM_AAL0_POOL ;
 struct zatm_dev* ZATM_DEV (int ) ;
 struct zatm_vcc* ZATM_VCC (struct atm_vcc*) ;
 unsigned short inb_p (int) ;
 unsigned short pool_index (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned short uPD98401_CHAN_ADDR ;
 unsigned short uPD98401_CHAN_ADDR_SHIFT ;
 int uPD98401_OPEN_CHAN ;
 int uPD98401_RXVC_AR ;
 int uPD98401_RXVC_OD ;
 int uPD98401_RXVC_POOL_SHIFT ;
 int use_pool (int ,unsigned short) ;
 unsigned short zin (int ) ;
 int zout (int ,int ) ;
 int zpokel (struct zatm_dev*,int,unsigned short) ;
 int zwait ;

__attribute__((used)) static int open_rx_first(struct atm_vcc *vcc)
{
 struct zatm_dev *zatm_dev;
 struct zatm_vcc *zatm_vcc;
 unsigned long flags;
 unsigned short chan;
 int cells;

 DPRINTK("open_rx_first (0x%x)\n",inb_p(0xc053));
 zatm_dev = ZATM_DEV(vcc->dev);
 zatm_vcc = ZATM_VCC(vcc);
 zatm_vcc->rx_chan = 0;
 if (vcc->qos.rxtp.traffic_class == ATM_NONE) return 0;
 if (vcc->qos.aal == ATM_AAL5) {
  if (vcc->qos.rxtp.max_sdu > 65464)
   vcc->qos.rxtp.max_sdu = 65464;


  cells = DIV_ROUND_UP(vcc->qos.rxtp.max_sdu + ATM_AAL5_TRAILER,
    ATM_CELL_PAYLOAD);
  zatm_vcc->pool = pool_index(cells*ATM_CELL_PAYLOAD);
 }
 else {
  cells = 1;
  zatm_vcc->pool = ZATM_AAL0_POOL;
 }
 if (zatm_vcc->pool < 0) return -EMSGSIZE;
 spin_lock_irqsave(&zatm_dev->lock, flags);
 zwait;
 zout(uPD98401_OPEN_CHAN,CMR);
 zwait;
 DPRINTK("0x%x 0x%x\n",zin(CMR),zin(CER));
 chan = (zin(CMR) & uPD98401_CHAN_ADDR) >> uPD98401_CHAN_ADDR_SHIFT;
 spin_unlock_irqrestore(&zatm_dev->lock, flags);
 DPRINTK("chan is %d\n",chan);
 if (!chan) return -EAGAIN;
 use_pool(vcc->dev,zatm_vcc->pool);
 DPRINTK("pool %d\n",zatm_vcc->pool);

 spin_lock_irqsave(&zatm_dev->lock, flags);
 zpokel(zatm_dev,zatm_vcc->pool << uPD98401_RXVC_POOL_SHIFT,
     chan*VC_SIZE/4);
 zpokel(zatm_dev,uPD98401_RXVC_OD | (vcc->qos.aal == ATM_AAL5 ?
     uPD98401_RXVC_AR : 0) | cells,chan*VC_SIZE/4+1);
 zpokel(zatm_dev,0,chan*VC_SIZE/4+2);
 zatm_vcc->rx_chan = chan;
 zatm_dev->rx_map[chan] = vcc;
 spin_unlock_irqrestore(&zatm_dev->lock, flags);
 return 0;
}
