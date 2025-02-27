
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct ib_wc {scalar_t__ slid; int wc_flags; TYPE_1__* qp; int dlid_path_bits; int src_qp; } ;
struct ib_port_attr {scalar_t__ lid; } ;
struct TYPE_18__ {scalar_t__ mgmt_class; scalar_t__ method; scalar_t__ attr_id; int status; } ;
struct ib_mad {TYPE_7__ mad_hdr; } ;
struct TYPE_15__ {int interface_id; int subnet_prefix; } ;
struct TYPE_16__ {TYPE_4__ global; } ;
struct TYPE_13__ {int interface_id; int subnet_prefix; } ;
struct TYPE_14__ {TYPE_2__ global; } ;
struct ib_grh {TYPE_5__ dgid; TYPE_3__ sgid; } ;
struct ib_device {int dummy; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_20__ {TYPE_6__ caps; } ;
struct TYPE_19__ {TYPE_9__* dev; } ;
struct TYPE_12__ {scalar_t__ qp_num; } ;


 scalar_t__ IB_LID_PERMISSIVE ;
 int IB_MAD_IGNORE_BKEY ;
 int IB_MAD_IGNORE_MKEY ;
 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;
 scalar_t__ IB_MGMT_CLASS_CONG_MGMT ;
 scalar_t__ IB_MGMT_CLASS_PERF_MGMT ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 scalar_t__ IB_MGMT_METHOD_GET ;
 scalar_t__ IB_MGMT_METHOD_SET ;
 scalar_t__ IB_MGMT_METHOD_TRAP ;
 scalar_t__ IB_MGMT_METHOD_TRAP_REPRESS ;
 scalar_t__ IB_SMP_ATTR_PORT_INFO ;
 scalar_t__ IB_SMP_ATTR_SM_INFO ;
 int IB_WC_GRH ;
 int MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV ;
 scalar_t__ MLX4_IB_VENDOR_CLASS1 ;
 scalar_t__ MLX4_IB_VENDOR_CLASS2 ;
 int MLX4_MAD_IFC_IGNORE_BKEY ;
 int MLX4_MAD_IFC_IGNORE_MKEY ;
 int MLX4_MAD_IFC_NET_VIEW ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int be64_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int forward_trap (TYPE_8__*,int ,struct ib_mad*) ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mlx4_MAD_IFC (TYPE_8__*,int,int ,struct ib_wc*,struct ib_grh*,struct ib_mad*,struct ib_mad*) ;
 int mlx4_is_slave (TYPE_9__*) ;
 int node_desc_override (struct ib_device*,struct ib_mad*) ;
 int pr_debug (char*,scalar_t__,int ,...) ;
 int smp_snoop (struct ib_device*,int ,struct ib_mad*,scalar_t__) ;
 TYPE_8__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int ib_process_mad(struct ib_device *ibdev, int mad_flags, u8 port_num,
   struct ib_wc *in_wc, struct ib_grh *in_grh,
   struct ib_mad *in_mad, struct ib_mad *out_mad)
{
 u16 slid, prev_lid = 0;
 int err;
 struct ib_port_attr pattr;

 if (in_wc && in_wc->qp->qp_num) {
  pr_debug("received MAD: slid:%d sqpn:%d "
   "dlid_bits:%d dqpn:%d wc_flags:0x%x, cls %x, mtd %x, atr %x\n",
   in_wc->slid, in_wc->src_qp,
   in_wc->dlid_path_bits,
   in_wc->qp->qp_num,
   in_wc->wc_flags,
   in_mad->mad_hdr.mgmt_class, in_mad->mad_hdr.method,
   be16_to_cpu(in_mad->mad_hdr.attr_id));
  if (in_wc->wc_flags & IB_WC_GRH) {
   pr_debug("sgid_hi:0x%016llx sgid_lo:0x%016llx\n",
     be64_to_cpu(in_grh->sgid.global.subnet_prefix),
     be64_to_cpu(in_grh->sgid.global.interface_id));
   pr_debug("dgid_hi:0x%016llx dgid_lo:0x%016llx\n",
     be64_to_cpu(in_grh->dgid.global.subnet_prefix),
     be64_to_cpu(in_grh->dgid.global.interface_id));
  }
 }

 slid = in_wc ? in_wc->slid : be16_to_cpu(IB_LID_PERMISSIVE);

 if (in_mad->mad_hdr.method == IB_MGMT_METHOD_TRAP && slid == 0) {
  forward_trap(to_mdev(ibdev), port_num, in_mad);
  return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
 }

 if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
     in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) {
  if (in_mad->mad_hdr.method != IB_MGMT_METHOD_GET &&
      in_mad->mad_hdr.method != IB_MGMT_METHOD_SET &&
      in_mad->mad_hdr.method != IB_MGMT_METHOD_TRAP_REPRESS)
   return IB_MAD_RESULT_SUCCESS;




  if (in_mad->mad_hdr.attr_id == IB_SMP_ATTR_SM_INFO)
   return IB_MAD_RESULT_SUCCESS;
 } else if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_PERF_MGMT ||
     in_mad->mad_hdr.mgmt_class == MLX4_IB_VENDOR_CLASS1 ||
     in_mad->mad_hdr.mgmt_class == MLX4_IB_VENDOR_CLASS2 ||
     in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_CONG_MGMT) {
  if (in_mad->mad_hdr.method != IB_MGMT_METHOD_GET &&
      in_mad->mad_hdr.method != IB_MGMT_METHOD_SET)
   return IB_MAD_RESULT_SUCCESS;
 } else
  return IB_MAD_RESULT_SUCCESS;

 if ((in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
      in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) &&
     in_mad->mad_hdr.method == IB_MGMT_METHOD_SET &&
     in_mad->mad_hdr.attr_id == IB_SMP_ATTR_PORT_INFO &&
     !ib_query_port(ibdev, port_num, &pattr))
  prev_lid = pattr.lid;

 err = mlx4_MAD_IFC(to_mdev(ibdev),
      (mad_flags & IB_MAD_IGNORE_MKEY ? MLX4_MAD_IFC_IGNORE_MKEY : 0) |
      (mad_flags & IB_MAD_IGNORE_BKEY ? MLX4_MAD_IFC_IGNORE_BKEY : 0) |
      MLX4_MAD_IFC_NET_VIEW,
      port_num, in_wc, in_grh, in_mad, out_mad);
 if (err)
  return IB_MAD_RESULT_FAILURE;

 if (!out_mad->mad_hdr.status) {
  if (!(to_mdev(ibdev)->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV))
   smp_snoop(ibdev, port_num, in_mad, prev_lid);

  if (!mlx4_is_slave(to_mdev(ibdev)->dev))
   node_desc_override(ibdev, out_mad);
 }


 if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)
  out_mad->mad_hdr.status |= cpu_to_be16(1 << 15);

 if (in_mad->mad_hdr.method == IB_MGMT_METHOD_TRAP_REPRESS)

  return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;

 return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
}
