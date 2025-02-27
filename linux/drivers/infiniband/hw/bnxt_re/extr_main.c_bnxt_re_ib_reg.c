
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_17__ {size_t level; TYPE_1__* pbl; } ;
struct TYPE_21__ {int creq_ring_id; TYPE_2__ creq; } ;
struct TYPE_19__ {int fw_id; int dma_map; } ;
struct TYPE_22__ {TYPE_4__ stats; } ;
struct bnxt_re_dev {TYPE_6__ rcfw; int chip_ctx; TYPE_7__ qplib_ctx; TYPE_5__* en_dev; int ibdev; int flags; int active_width; int active_speed; int worker; int is_virtfn; int dev_attr; TYPE_3__* msix_entries; } ;
typedef int dma_addr_t ;
struct TYPE_20__ {int pdev; } ;
struct TYPE_18__ {int vector; int ring_idx; } ;
struct TYPE_16__ {int pg_count; int * pg_map_arr; } ;


 scalar_t__ BNXT_QPLIB_CREQE_MAX_CNT ;
 size_t BNXT_RE_AEQ_IDX ;
 int BNXT_RE_FLAG_GOT_MSIX ;
 int BNXT_RE_FLAG_IBDEV_REGISTERED ;
 int BNXT_RE_FLAG_ISSUE_ROCE_STATS ;
 int BNXT_RE_FLAG_NETDEV_REGISTERED ;
 int BNXT_RE_FLAG_QOS_WORK_REG ;
 int BNXT_RE_FLAG_RCFW_CHANNEL_EN ;
 int BNXT_RE_FLAG_RESOURCES_ALLOCATED ;
 int BNXT_RE_FLAG_RESOURCES_INITIALIZED ;
 int BNXT_RE_MAX_QPC_COUNT ;
 int EINVAL ;
 int IB_EVENT_PORT_ACTIVE ;
 int INIT_DELAYED_WORK (int *,int ) ;
 size_t PBL_LVL_0 ;
 int bnxt_qplib_alloc_ctx (int ,TYPE_7__*,int ,int ) ;
 int bnxt_qplib_alloc_rcfw_channel (int ,TYPE_6__*,TYPE_7__*,int ) ;
 int bnxt_qplib_disable_rcfw_channel (TYPE_6__*) ;
 int bnxt_qplib_enable_rcfw_channel (int ,TYPE_6__*,int,int ,int ,int *) ;
 int bnxt_qplib_free_ctx (int ,TYPE_7__*) ;
 int bnxt_qplib_free_rcfw_channel (TYPE_6__*) ;
 int bnxt_qplib_get_dev_attr (TYPE_6__*,int *,int ) ;
 int bnxt_qplib_get_ring_type (int *) ;
 int bnxt_qplib_init_rcfw (TYPE_6__*,TYPE_7__*,int ) ;
 int bnxt_qplib_is_chip_gen_p5 (int *) ;
 int bnxt_re_aeq_handler ;
 int bnxt_re_alloc_res (struct bnxt_re_dev*) ;
 int bnxt_re_dispatch_event (int *,int *,int,int ) ;
 int bnxt_re_get_nqdb_offset (struct bnxt_re_dev*,size_t) ;
 int bnxt_re_get_sriov_func_type (struct bnxt_re_dev*) ;
 int bnxt_re_ib_unreg (struct bnxt_re_dev*) ;
 int bnxt_re_init_res (struct bnxt_re_dev*) ;
 int bnxt_re_net_ring_alloc (struct bnxt_re_dev*,int *,int,int ,scalar_t__,int ,int *) ;
 int bnxt_re_net_ring_free (struct bnxt_re_dev*,int ,int ) ;
 int bnxt_re_net_stats_ctx_alloc (struct bnxt_re_dev*,int ,int *) ;
 int bnxt_re_net_stats_ctx_free (struct bnxt_re_dev*,int ) ;
 int bnxt_re_query_hwrm_intf_version (struct bnxt_re_dev*) ;
 int bnxt_re_register_ib (struct bnxt_re_dev*) ;
 int bnxt_re_register_netdev (struct bnxt_re_dev*) ;
 int bnxt_re_request_msix (struct bnxt_re_dev*) ;
 int bnxt_re_set_resource_limits (struct bnxt_re_dev*) ;
 int bnxt_re_setup_chip_ctx (struct bnxt_re_dev*) ;
 int bnxt_re_setup_qos (struct bnxt_re_dev*) ;
 int bnxt_re_worker ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int ib_get_eth_speed (int *,int,int *,int *) ;
 int msecs_to_jiffies (int) ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int rdev_to_dev (struct bnxt_re_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int bnxt_re_ib_reg(struct bnxt_re_dev *rdev)
{
 dma_addr_t *pg_map;
 u32 db_offt, ridx;
 int pages, vid;
 bool locked;
 u8 type;
 int rc;


 rtnl_lock();
 locked = 1;


 rc = bnxt_re_register_netdev(rdev);
 if (rc) {
  rtnl_unlock();
  pr_err("Failed to register with netedev: %#x\n", rc);
  return -EINVAL;
 }
 set_bit(BNXT_RE_FLAG_NETDEV_REGISTERED, &rdev->flags);

 rc = bnxt_re_setup_chip_ctx(rdev);
 if (rc) {
  dev_err(rdev_to_dev(rdev), "Failed to get chip context\n");
  return -EINVAL;
 }


 bnxt_re_get_sriov_func_type(rdev);

 rc = bnxt_re_request_msix(rdev);
 if (rc) {
  pr_err("Failed to get MSI-X vectors: %#x\n", rc);
  rc = -EINVAL;
  goto fail;
 }
 set_bit(BNXT_RE_FLAG_GOT_MSIX, &rdev->flags);

 bnxt_re_query_hwrm_intf_version(rdev);




 rc = bnxt_qplib_alloc_rcfw_channel(rdev->en_dev->pdev, &rdev->rcfw,
        &rdev->qplib_ctx,
        BNXT_RE_MAX_QPC_COUNT);
 if (rc) {
  pr_err("Failed to allocate RCFW Channel: %#x\n", rc);
  goto fail;
 }
 type = bnxt_qplib_get_ring_type(&rdev->chip_ctx);
 pg_map = rdev->rcfw.creq.pbl[PBL_LVL_0].pg_map_arr;
 pages = rdev->rcfw.creq.pbl[rdev->rcfw.creq.level].pg_count;
 ridx = rdev->msix_entries[BNXT_RE_AEQ_IDX].ring_idx;
 rc = bnxt_re_net_ring_alloc(rdev, pg_map, pages, type,
        BNXT_QPLIB_CREQE_MAX_CNT - 1,
        ridx, &rdev->rcfw.creq_ring_id);
 if (rc) {
  pr_err("Failed to allocate CREQ: %#x\n", rc);
  goto free_rcfw;
 }
 db_offt = bnxt_re_get_nqdb_offset(rdev, BNXT_RE_AEQ_IDX);
 vid = rdev->msix_entries[BNXT_RE_AEQ_IDX].vector;
 rc = bnxt_qplib_enable_rcfw_channel(rdev->en_dev->pdev, &rdev->rcfw,
         vid, db_offt, rdev->is_virtfn,
         &bnxt_re_aeq_handler);
 if (rc) {
  pr_err("Failed to enable RCFW channel: %#x\n", rc);
  goto free_ring;
 }

 rc = bnxt_qplib_get_dev_attr(&rdev->rcfw, &rdev->dev_attr,
         rdev->is_virtfn);
 if (rc)
  goto disable_rcfw;
 if (!rdev->is_virtfn)
  bnxt_re_set_resource_limits(rdev);

 rc = bnxt_qplib_alloc_ctx(rdev->en_dev->pdev, &rdev->qplib_ctx, 0,
      bnxt_qplib_is_chip_gen_p5(&rdev->chip_ctx));
 if (rc) {
  pr_err("Failed to allocate QPLIB context: %#x\n", rc);
  goto disable_rcfw;
 }
 rc = bnxt_re_net_stats_ctx_alloc(rdev,
      rdev->qplib_ctx.stats.dma_map,
      &rdev->qplib_ctx.stats.fw_id);
 if (rc) {
  pr_err("Failed to allocate stats context: %#x\n", rc);
  goto free_ctx;
 }

 rc = bnxt_qplib_init_rcfw(&rdev->rcfw, &rdev->qplib_ctx,
      rdev->is_virtfn);
 if (rc) {
  pr_err("Failed to initialize RCFW: %#x\n", rc);
  goto free_sctx;
 }
 set_bit(BNXT_RE_FLAG_RCFW_CHANNEL_EN, &rdev->flags);


 rc = bnxt_re_alloc_res(rdev);
 if (rc) {
  pr_err("Failed to allocate resources: %#x\n", rc);
  goto fail;
 }
 set_bit(BNXT_RE_FLAG_RESOURCES_ALLOCATED, &rdev->flags);
 rc = bnxt_re_init_res(rdev);
 if (rc) {
  pr_err("Failed to initialize resources: %#x\n", rc);
  goto fail;
 }

 set_bit(BNXT_RE_FLAG_RESOURCES_INITIALIZED, &rdev->flags);

 if (!rdev->is_virtfn) {
  rc = bnxt_re_setup_qos(rdev);
  if (rc)
   pr_info("RoCE priority not yet configured\n");

  INIT_DELAYED_WORK(&rdev->worker, bnxt_re_worker);
  set_bit(BNXT_RE_FLAG_QOS_WORK_REG, &rdev->flags);
  schedule_delayed_work(&rdev->worker, msecs_to_jiffies(30000));
 }

 rtnl_unlock();
 locked = 0;


 rc = bnxt_re_register_ib(rdev);
 if (rc) {
  pr_err("Failed to register with IB: %#x\n", rc);
  goto fail;
 }
 set_bit(BNXT_RE_FLAG_IBDEV_REGISTERED, &rdev->flags);
 dev_info(rdev_to_dev(rdev), "Device registered successfully");
 ib_get_eth_speed(&rdev->ibdev, 1, &rdev->active_speed,
    &rdev->active_width);
 set_bit(BNXT_RE_FLAG_ISSUE_ROCE_STATS, &rdev->flags);
 bnxt_re_dispatch_event(&rdev->ibdev, ((void*)0), 1, IB_EVENT_PORT_ACTIVE);

 return 0;
free_sctx:
 bnxt_re_net_stats_ctx_free(rdev, rdev->qplib_ctx.stats.fw_id);
free_ctx:
 bnxt_qplib_free_ctx(rdev->en_dev->pdev, &rdev->qplib_ctx);
disable_rcfw:
 bnxt_qplib_disable_rcfw_channel(&rdev->rcfw);
free_ring:
 type = bnxt_qplib_get_ring_type(&rdev->chip_ctx);
 bnxt_re_net_ring_free(rdev, rdev->rcfw.creq_ring_id, type);
free_rcfw:
 bnxt_qplib_free_rcfw_channel(&rdev->rcfw);
fail:
 if (!locked)
  rtnl_lock();
 bnxt_re_ib_unreg(rdev);
 rtnl_unlock();

 return rc;
}
