
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct qib_ibport {scalar_t__ sm_lid; int sm_sl; int mkeyprot; int vl_high_limit; int subnet_timeout; scalar_t__ qkey_violations; scalar_t__ pkey_violations; scalar_t__ mkey_violations; int lock; TYPE_2__* sm_ah; void* mkey_lease_period; int gid_prefix; int mkey; } ;
struct qib_pportdata {scalar_t__ lid; int lmc; int link_width_supported; int link_width_enabled; int link_speed_supported; int link_speed_enabled; int vls_supported; int lflags_lock; int lflags; struct qib_ibport ibport_data; } ;
struct qib_devdata {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int) ;struct qib_pportdata* pport; } ;
struct ib_smp {int status; int hop_cnt; int attr_mod; scalar_t__ data; } ;
struct ib_port_info {int clientrereg_resv_subnetto; int mkeyprot_resv_lmc; int neighbormtu_mastersmsl; int link_width_enabled; int linkspeedactive_enabled; int portphysstate_linkdown; int vl_high_limit; int operationalvl_pei_peo_fpi_fpo; scalar_t__ mkey_violations; scalar_t__ pkey_violations; scalar_t__ qkey_violations; int localphyerrors_overrunerrors; int linkspeed_portstate; int sm_lid; int lid; int mkey_lease_period; int gid_prefix; int mkey; } ;
struct TYPE_4__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; struct ib_device* device; } ;
struct ib_device {int phys_port_cnt; } ;
struct TYPE_6__ {int sl; scalar_t__ dlid; } ;
struct TYPE_5__ {TYPE_3__ attr; } ;


 int IB_EVENT_CLIENT_REREGISTER ;
 int IB_EVENT_LID_CHANGE ;
 int IB_EVENT_SM_CHANGE ;
 int IB_LINKINITCMD_POLL ;
 int IB_LINKINITCMD_SLEEP ;
 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_SUCCESS ;




 int IB_SMP_INVALID_FIELD ;
 int QIBL_LINKV ;
 int QIB_IB_CFG_LINKDEFAULT ;
 int QIB_IB_CFG_OP_VLS ;
 int QIB_IB_CFG_VL_HIGH_LIMIT ;
 scalar_t__ QIB_IB_LINKACTIVE ;
 scalar_t__ QIB_IB_LINKARM ;
 scalar_t__ QIB_IB_LINKDOWN ;
 scalar_t__ QIB_IB_LINKDOWN_DISABLE ;
 scalar_t__ QIB_IB_LINKDOWN_ONLY ;
 scalar_t__ QIB_IB_LINKDOWN_SLEEP ;
 scalar_t__ QIB_MULTICAST_LID_BASE ;
 int _QIB_EVENT_LID_CHANGE_BIT ;
 int _QIB_EVENT_LMC_CHANGE_BIT ;
 void* be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 int ib_dispatch_event (struct ib_event*) ;
 int ib_mtu_enum_to_int (int) ;
 int qib_set_lid (struct qib_pportdata*,scalar_t__,int) ;
 int qib_set_linkstate (struct qib_pportdata*,scalar_t__) ;
 int qib_set_mtu (struct qib_pportdata*,int) ;
 int qib_set_uevent_bits (struct qib_pportdata*,int ) ;
 int qib_wait_linkstate (struct qib_pportdata*,int ,int) ;
 int set_link_speed_enabled (struct qib_pportdata*,int) ;
 int set_link_width_enabled (struct qib_pportdata*,int) ;
 scalar_t__ set_overrunthreshold (struct qib_pportdata*,int) ;
 scalar_t__ set_phyerrthreshold (struct qib_pportdata*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct qib_pportdata*,int ,int) ;
 int stub2 (struct qib_pportdata*,int ,int) ;
 int stub3 (struct qib_pportdata*,int ,int) ;
 int stub4 (struct qib_pportdata*,int ,int) ;
 int subn_get_portinfo (struct ib_smp*,struct ib_device*,int) ;

__attribute__((used)) static int subn_set_portinfo(struct ib_smp *smp, struct ib_device *ibdev,
        u8 port)
{
 struct ib_port_info *pip = (struct ib_port_info *)smp->data;
 struct ib_event event;
 struct qib_devdata *dd;
 struct qib_pportdata *ppd;
 struct qib_ibport *ibp;
 u8 clientrereg = (pip->clientrereg_resv_subnetto & 0x80);
 unsigned long flags;
 u16 lid, smlid;
 u8 lwe;
 u8 lse;
 u8 state;
 u8 vls;
 u8 msl;
 u16 lstate;
 int ret, ore, mtu;
 u32 port_num = be32_to_cpu(smp->attr_mod);

 if (port_num == 0)
  port_num = port;
 else {
  if (port_num > ibdev->phys_port_cnt)
   goto err;

  if (port_num != port)
   goto get_only;
 }

 dd = dd_from_ibdev(ibdev);

 ppd = dd->pport + (port_num - 1);
 ibp = &ppd->ibport_data;
 event.device = ibdev;
 event.element.port_num = port;

 ibp->mkey = pip->mkey;
 ibp->gid_prefix = pip->gid_prefix;
 ibp->mkey_lease_period = be16_to_cpu(pip->mkey_lease_period);

 lid = be16_to_cpu(pip->lid);

 if (lid == 0 || lid >= QIB_MULTICAST_LID_BASE)
  smp->status |= IB_SMP_INVALID_FIELD;
 else if (ppd->lid != lid || ppd->lmc != (pip->mkeyprot_resv_lmc & 7)) {
  if (ppd->lid != lid)
   qib_set_uevent_bits(ppd, _QIB_EVENT_LID_CHANGE_BIT);
  if (ppd->lmc != (pip->mkeyprot_resv_lmc & 7))
   qib_set_uevent_bits(ppd, _QIB_EVENT_LMC_CHANGE_BIT);
  qib_set_lid(ppd, lid, pip->mkeyprot_resv_lmc & 7);
  event.event = IB_EVENT_LID_CHANGE;
  ib_dispatch_event(&event);
 }

 smlid = be16_to_cpu(pip->sm_lid);
 msl = pip->neighbormtu_mastersmsl & 0xF;

 if (smlid == 0 || smlid >= QIB_MULTICAST_LID_BASE)
  smp->status |= IB_SMP_INVALID_FIELD;
 else if (smlid != ibp->sm_lid || msl != ibp->sm_sl) {
  spin_lock_irqsave(&ibp->lock, flags);
  if (ibp->sm_ah) {
   if (smlid != ibp->sm_lid)
    ibp->sm_ah->attr.dlid = smlid;
   if (msl != ibp->sm_sl)
    ibp->sm_ah->attr.sl = msl;
  }
  spin_unlock_irqrestore(&ibp->lock, flags);
  if (smlid != ibp->sm_lid)
   ibp->sm_lid = smlid;
  if (msl != ibp->sm_sl)
   ibp->sm_sl = msl;
  event.event = IB_EVENT_SM_CHANGE;
  ib_dispatch_event(&event);
 }


 lwe = pip->link_width_enabled;
 if (lwe) {
  if (lwe == 0xFF)
   set_link_width_enabled(ppd, ppd->link_width_supported);
  else if (lwe >= 16 || (lwe & ~ppd->link_width_supported))
   smp->status |= IB_SMP_INVALID_FIELD;
  else if (lwe != ppd->link_width_enabled)
   set_link_width_enabled(ppd, lwe);
 }

 lse = pip->linkspeedactive_enabled & 0xF;
 if (lse) {





  if (lse == 15)
   set_link_speed_enabled(ppd,
            ppd->link_speed_supported);
  else if (lse >= 8 || (lse & ~ppd->link_speed_supported))
   smp->status |= IB_SMP_INVALID_FIELD;
  else if (lse != ppd->link_speed_enabled)
   set_link_speed_enabled(ppd, lse);
 }


 switch (pip->portphysstate_linkdown & 0xF) {
 case 0:
  break;
 case 1:
  (void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LINKDEFAULT,
     IB_LINKINITCMD_SLEEP);
  break;
 case 2:
  (void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LINKDEFAULT,
     IB_LINKINITCMD_POLL);
  break;
 default:
  smp->status |= IB_SMP_INVALID_FIELD;
 }

 ibp->mkeyprot = pip->mkeyprot_resv_lmc >> 6;
 ibp->vl_high_limit = pip->vl_high_limit;
 (void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_VL_HIGH_LIMIT,
        ibp->vl_high_limit);

 mtu = ib_mtu_enum_to_int((pip->neighbormtu_mastersmsl >> 4) & 0xF);
 if (mtu == -1)
  smp->status |= IB_SMP_INVALID_FIELD;
 else
  qib_set_mtu(ppd, mtu);


 vls = (pip->operationalvl_pei_peo_fpi_fpo >> 4) & 0xF;
 if (vls) {
  if (vls > ppd->vls_supported)
   smp->status |= IB_SMP_INVALID_FIELD;
  else
   (void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_OP_VLS, vls);
 }

 if (pip->mkey_violations == 0)
  ibp->mkey_violations = 0;

 if (pip->pkey_violations == 0)
  ibp->pkey_violations = 0;

 if (pip->qkey_violations == 0)
  ibp->qkey_violations = 0;

 ore = pip->localphyerrors_overrunerrors;
 if (set_phyerrthreshold(ppd, (ore >> 4) & 0xF))
  smp->status |= IB_SMP_INVALID_FIELD;

 if (set_overrunthreshold(ppd, (ore & 0xF)))
  smp->status |= IB_SMP_INVALID_FIELD;

 ibp->subnet_timeout = pip->clientrereg_resv_subnetto & 0x1F;







 state = pip->linkspeed_portstate & 0xF;
 lstate = (pip->portphysstate_linkdown >> 4) & 0xF;
 if (lstate && !(state == 129 || state == 128))
  smp->status |= IB_SMP_INVALID_FIELD;





 switch (state) {
 case 128:
  if (lstate == 0)
   break;

 case 129:
  if (lstate == 0)
   lstate = QIB_IB_LINKDOWN_ONLY;
  else if (lstate == 1)
   lstate = QIB_IB_LINKDOWN_SLEEP;
  else if (lstate == 2)
   lstate = QIB_IB_LINKDOWN;
  else if (lstate == 3)
   lstate = QIB_IB_LINKDOWN_DISABLE;
  else {
   smp->status |= IB_SMP_INVALID_FIELD;
   break;
  }
  spin_lock_irqsave(&ppd->lflags_lock, flags);
  ppd->lflags &= ~QIBL_LINKV;
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);
  qib_set_linkstate(ppd, lstate);




  if (lstate == QIB_IB_LINKDOWN_DISABLE && smp->hop_cnt) {
   ret = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
   goto done;
  }
  qib_wait_linkstate(ppd, QIBL_LINKV, 10);
  break;
 case 130:
  qib_set_linkstate(ppd, QIB_IB_LINKARM);
  break;
 case 131:
  qib_set_linkstate(ppd, QIB_IB_LINKACTIVE);
  break;
 default:
  smp->status |= IB_SMP_INVALID_FIELD;
 }

 if (clientrereg) {
  event.event = IB_EVENT_CLIENT_REREGISTER;
  ib_dispatch_event(&event);
 }

 ret = subn_get_portinfo(smp, ibdev, port);


 pip->clientrereg_resv_subnetto |= clientrereg;

 goto get_only;

err:
 smp->status |= IB_SMP_INVALID_FIELD;
get_only:
 ret = subn_get_portinfo(smp, ibdev, port);
done:
 return ret;
}
