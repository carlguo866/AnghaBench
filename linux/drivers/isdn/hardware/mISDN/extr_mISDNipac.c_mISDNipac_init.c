
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int ctrl; } ;
struct TYPE_9__ {int bchannels; int channelmap; TYPE_1__ D; } ;
struct TYPE_10__ {int debug; TYPE_2__ dev; } ;
struct TYPE_13__ {int type; TYPE_3__ dch; } ;
struct ipac_hw {int type; int release; int init; TYPE_5__* hscx; TYPE_6__ isac; int name; void* hw; } ;
struct TYPE_11__ {int nr; int ctrl; int * send; int list; } ;
struct TYPE_14__ {int nr; void* hw; TYPE_4__ ch; } ;
struct TYPE_12__ {int off; int fifo_size; int slot; struct ipac_hw* ip; TYPE_7__ bch; } ;


 int DEBUG_HW ;
 int IPACX_OFF_ICA ;
 int IPACX_OFF_ICB ;
 int IPAC_TYPE_HSCX ;
 int IPAC_TYPE_IPAC ;
 int IPAC_TYPE_IPACX ;
 int IPAC_TYPE_ISAC ;
 int IPAC_TYPE_ISACX ;
 int ISDN_P_B_HDLC ;
 int ISDN_P_B_MASK ;
 int ISDN_P_B_RAW ;
 int MAX_DATA_MEM ;
 int free_ipac ;
 int hscx_bctrl ;
 int hscx_l2l1 ;
 int ipac_dctrl ;
 int ipac_init ;
 int list_add (int *,int *) ;
 int mISDN_initbchannel (TYPE_7__*,int ,int) ;
 int mISDNisac_init (TYPE_6__*,void*) ;
 int pr_notice (char*,int ,int) ;
 int set_channelmap (int,int ) ;

u32
mISDNipac_init(struct ipac_hw *ipac, void *hw)
{
 u32 ret;
 u8 i;

 ipac->hw = hw;
 if (ipac->isac.dch.debug & DEBUG_HW)
  pr_notice("%s: ipac type %x\n", ipac->name, ipac->type);
 if (ipac->type & IPAC_TYPE_HSCX) {
  ipac->isac.type = IPAC_TYPE_ISAC;
  ipac->hscx[0].off = 0;
  ipac->hscx[1].off = 0x40;
  ipac->hscx[0].fifo_size = 32;
  ipac->hscx[1].fifo_size = 32;
 } else if (ipac->type & IPAC_TYPE_IPAC) {
  ipac->isac.type = IPAC_TYPE_IPAC | IPAC_TYPE_ISAC;
  ipac->hscx[0].off = 0;
  ipac->hscx[1].off = 0x40;
  ipac->hscx[0].fifo_size = 64;
  ipac->hscx[1].fifo_size = 64;
 } else if (ipac->type & IPAC_TYPE_IPACX) {
  ipac->isac.type = IPAC_TYPE_IPACX | IPAC_TYPE_ISACX;
  ipac->hscx[0].off = IPACX_OFF_ICA;
  ipac->hscx[1].off = IPACX_OFF_ICB;
  ipac->hscx[0].fifo_size = 64;
  ipac->hscx[1].fifo_size = 64;
 } else
  return 0;

 mISDNisac_init(&ipac->isac, hw);

 ipac->isac.dch.dev.D.ctrl = ipac_dctrl;

 for (i = 0; i < 2; i++) {
  ipac->hscx[i].bch.nr = i + 1;
  set_channelmap(i + 1, ipac->isac.dch.dev.channelmap);
  list_add(&ipac->hscx[i].bch.ch.list,
    &ipac->isac.dch.dev.bchannels);
  mISDN_initbchannel(&ipac->hscx[i].bch, MAX_DATA_MEM,
       ipac->hscx[i].fifo_size);
  ipac->hscx[i].bch.ch.nr = i + 1;
  ipac->hscx[i].bch.ch.send = &hscx_l2l1;
  ipac->hscx[i].bch.ch.ctrl = hscx_bctrl;
  ipac->hscx[i].bch.hw = hw;
  ipac->hscx[i].ip = ipac;


  ipac->hscx[i].slot = (i == 0) ? 0x2f : 0x03;
 }

 ipac->init = ipac_init;
 ipac->release = free_ipac;

 ret = (1 << (ISDN_P_B_RAW & ISDN_P_B_MASK)) |
  (1 << (ISDN_P_B_HDLC & ISDN_P_B_MASK));
 return ret;
}
