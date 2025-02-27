
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int peer_cnt; size_t part; int * msg_locks; TYPE_1__* peers; } ;
struct TYPE_8__ {TYPE_2__* msgs; } ;
struct TYPE_7__ {int * msgctl; } ;
struct TYPE_6__ {int out; } ;
struct TYPE_5__ {int part; } ;


 int EINVAL ;
 int IDT_MSG_CNT ;
 int SET_FIELD (int ,int ,int) ;
 int SWPxMSGCTL_PART ;
 int SWPxMSGCTL_REG ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int) ;
 int idt_sw_write (struct idt_ntb_dev*,int ,int) ;
 TYPE_4__ ntdata_tbl ;
 TYPE_3__* partdata_tbl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_peer_msg_write(struct ntb_dev *ntb, int pidx, int midx,
      u32 msg)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);
 unsigned long irqflags;
 u32 swpmsgctl = 0;

 if (midx < 0 || IDT_MSG_CNT <= midx)
  return -EINVAL;

 if (pidx < 0 || ndev->peer_cnt <= pidx)
  return -EINVAL;


 swpmsgctl = SET_FIELD(SWPxMSGCTL_REG, 0, midx) |
      SET_FIELD(SWPxMSGCTL_PART, 0, ndev->peers[pidx].part);


 spin_lock_irqsave(&ndev->msg_locks[midx], irqflags);

 idt_sw_write(ndev, partdata_tbl[ndev->part].msgctl[midx], swpmsgctl);
 idt_nt_write(ndev, ntdata_tbl.msgs[midx].out, msg);

 spin_unlock_irqrestore(&ndev->msg_locks[midx], irqflags);


 return 0;
}
