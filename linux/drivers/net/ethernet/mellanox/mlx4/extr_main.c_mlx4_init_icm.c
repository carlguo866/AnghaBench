
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_13__ {int aux_icm; } ;
struct TYPE_17__ {int rdmarc_shift; int cmpt_table; int qp_table; int auxc_table; int altc_table; int rdmarc_table; } ;
struct TYPE_12__ {int cmpt_table; int table; } ;
struct TYPE_11__ {int cmpt_table; int table; } ;
struct TYPE_15__ {int cmpt_table; int table; } ;
struct TYPE_16__ {int mtt_table; int dmpt_table; } ;
struct TYPE_10__ {int table; } ;
struct mlx4_priv {TYPE_4__ fw; TYPE_8__ qp_table; TYPE_3__ srq_table; TYPE_2__ cq_table; TYPE_6__ eq_table; TYPE_7__ mr_table; TYPE_1__ mcg_table; } ;
struct mlx4_init_hca_param {int mc_base; int srqc_base; int cqc_base; int rdmarc_base; int altc_base; int auxc_base; int qpc_base; int dmpt_base; int mtt_base; int eqc_base; int cmpt_base; } ;
struct mlx4_dev_cap {int eqc_entry_sz; int dmpt_entry_sz; int qpc_entry_sz; int aux_entry_sz; int altc_entry_sz; int rdmarc_entry_sz; int cqc_entry_sz; int srq_entry_sz; int cmpt_entry_sz; } ;
struct TYPE_18__ {int reserved_mtts; int mtt_entry_sz; int num_mtts; int num_mpts; int reserved_mrws; int num_qps; int* reserved_qps_cnt; int num_cqs; int reserved_cqs; int num_srqs; int reserved_srqs; int num_mgms; int num_amgms; } ;
struct TYPE_14__ {int num_phys_eqs; } ;
struct mlx4_dev {TYPE_9__ caps; TYPE_5__ phys_caps; } ;


 int ALIGN (int,int ) ;
 int ENOMEM ;
 int GFP_HIGHUSER ;
 size_t MLX4_QP_REGION_FW ;
 int __GFP_NOWARN ;
 int dma_get_cache_alignment () ;
 int mlx4_MAP_ICM_AUX (struct mlx4_dev*,int ) ;
 int mlx4_SET_ICM_SIZE (struct mlx4_dev*,scalar_t__,scalar_t__*) ;
 int mlx4_UNMAP_ICM_AUX (struct mlx4_dev*) ;
 int mlx4_alloc_icm (struct mlx4_dev*,scalar_t__,int,int ) ;
 int mlx4_cleanup_icm_table (struct mlx4_dev*,int *) ;
 int mlx4_dbg (struct mlx4_dev*,char*,unsigned long long,unsigned long long) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 int mlx4_free_icm (struct mlx4_dev*,int ,int ) ;
 int mlx4_get_mgm_entry_size (struct mlx4_dev*) ;
 int mlx4_init_cmpt_table (struct mlx4_dev*,int ,int ) ;
 int mlx4_init_icm_table (struct mlx4_dev*,int *,int ,int,int,int,int,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static int mlx4_init_icm(struct mlx4_dev *dev, struct mlx4_dev_cap *dev_cap,
    struct mlx4_init_hca_param *init_hca, u64 icm_size)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 u64 aux_pages;
 int num_eqs;
 int err;

 err = mlx4_SET_ICM_SIZE(dev, icm_size, &aux_pages);
 if (err) {
  mlx4_err(dev, "SET_ICM_SIZE command failed, aborting\n");
  return err;
 }

 mlx4_dbg(dev, "%lld KB of HCA context requires %lld KB aux memory\n",
   (unsigned long long) icm_size >> 10,
   (unsigned long long) aux_pages << 2);

 priv->fw.aux_icm = mlx4_alloc_icm(dev, aux_pages,
       GFP_HIGHUSER | __GFP_NOWARN, 0);
 if (!priv->fw.aux_icm) {
  mlx4_err(dev, "Couldn't allocate aux memory, aborting\n");
  return -ENOMEM;
 }

 err = mlx4_MAP_ICM_AUX(dev, priv->fw.aux_icm);
 if (err) {
  mlx4_err(dev, "MAP_ICM_AUX command failed, aborting\n");
  goto err_free_aux;
 }

 err = mlx4_init_cmpt_table(dev, init_hca->cmpt_base, dev_cap->cmpt_entry_sz);
 if (err) {
  mlx4_err(dev, "Failed to map cMPT context memory, aborting\n");
  goto err_unmap_aux;
 }


 num_eqs = dev->phys_caps.num_phys_eqs;
 err = mlx4_init_icm_table(dev, &priv->eq_table.table,
      init_hca->eqc_base, dev_cap->eqc_entry_sz,
      num_eqs, num_eqs, 0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map EQ context memory, aborting\n");
  goto err_unmap_cmpt;
 }
 dev->caps.reserved_mtts =
  ALIGN(dev->caps.reserved_mtts * dev->caps.mtt_entry_sz,
        dma_get_cache_alignment()) / dev->caps.mtt_entry_sz;

 err = mlx4_init_icm_table(dev, &priv->mr_table.mtt_table,
      init_hca->mtt_base,
      dev->caps.mtt_entry_sz,
      dev->caps.num_mtts,
      dev->caps.reserved_mtts, 1, 0);
 if (err) {
  mlx4_err(dev, "Failed to map MTT context memory, aborting\n");
  goto err_unmap_eq;
 }

 err = mlx4_init_icm_table(dev, &priv->mr_table.dmpt_table,
      init_hca->dmpt_base,
      dev_cap->dmpt_entry_sz,
      dev->caps.num_mpts,
      dev->caps.reserved_mrws, 1, 1);
 if (err) {
  mlx4_err(dev, "Failed to map dMPT context memory, aborting\n");
  goto err_unmap_mtt;
 }

 err = mlx4_init_icm_table(dev, &priv->qp_table.qp_table,
      init_hca->qpc_base,
      dev_cap->qpc_entry_sz,
      dev->caps.num_qps,
      dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
      0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map QP context memory, aborting\n");
  goto err_unmap_dmpt;
 }

 err = mlx4_init_icm_table(dev, &priv->qp_table.auxc_table,
      init_hca->auxc_base,
      dev_cap->aux_entry_sz,
      dev->caps.num_qps,
      dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
      0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map AUXC context memory, aborting\n");
  goto err_unmap_qp;
 }

 err = mlx4_init_icm_table(dev, &priv->qp_table.altc_table,
      init_hca->altc_base,
      dev_cap->altc_entry_sz,
      dev->caps.num_qps,
      dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
      0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map ALTC context memory, aborting\n");
  goto err_unmap_auxc;
 }

 err = mlx4_init_icm_table(dev, &priv->qp_table.rdmarc_table,
      init_hca->rdmarc_base,
      dev_cap->rdmarc_entry_sz << priv->qp_table.rdmarc_shift,
      dev->caps.num_qps,
      dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
      0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map RDMARC context memory, aborting\n");
  goto err_unmap_altc;
 }

 err = mlx4_init_icm_table(dev, &priv->cq_table.table,
      init_hca->cqc_base,
      dev_cap->cqc_entry_sz,
      dev->caps.num_cqs,
      dev->caps.reserved_cqs, 0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map CQ context memory, aborting\n");
  goto err_unmap_rdmarc;
 }

 err = mlx4_init_icm_table(dev, &priv->srq_table.table,
      init_hca->srqc_base,
      dev_cap->srq_entry_sz,
      dev->caps.num_srqs,
      dev->caps.reserved_srqs, 0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map SRQ context memory, aborting\n");
  goto err_unmap_cq;
 }
 err = mlx4_init_icm_table(dev, &priv->mcg_table.table,
      init_hca->mc_base,
      mlx4_get_mgm_entry_size(dev),
      dev->caps.num_mgms + dev->caps.num_amgms,
      dev->caps.num_mgms + dev->caps.num_amgms,
      0, 0);
 if (err) {
  mlx4_err(dev, "Failed to map MCG context memory, aborting\n");
  goto err_unmap_srq;
 }

 return 0;

err_unmap_srq:
 mlx4_cleanup_icm_table(dev, &priv->srq_table.table);

err_unmap_cq:
 mlx4_cleanup_icm_table(dev, &priv->cq_table.table);

err_unmap_rdmarc:
 mlx4_cleanup_icm_table(dev, &priv->qp_table.rdmarc_table);

err_unmap_altc:
 mlx4_cleanup_icm_table(dev, &priv->qp_table.altc_table);

err_unmap_auxc:
 mlx4_cleanup_icm_table(dev, &priv->qp_table.auxc_table);

err_unmap_qp:
 mlx4_cleanup_icm_table(dev, &priv->qp_table.qp_table);

err_unmap_dmpt:
 mlx4_cleanup_icm_table(dev, &priv->mr_table.dmpt_table);

err_unmap_mtt:
 mlx4_cleanup_icm_table(dev, &priv->mr_table.mtt_table);

err_unmap_eq:
 mlx4_cleanup_icm_table(dev, &priv->eq_table.table);

err_unmap_cmpt:
 mlx4_cleanup_icm_table(dev, &priv->eq_table.cmpt_table);
 mlx4_cleanup_icm_table(dev, &priv->cq_table.cmpt_table);
 mlx4_cleanup_icm_table(dev, &priv->srq_table.cmpt_table);
 mlx4_cleanup_icm_table(dev, &priv->qp_table.cmpt_table);

err_unmap_aux:
 mlx4_UNMAP_ICM_AUX(dev);

err_free_aux:
 mlx4_free_icm(dev, priv->fw.aux_icm, 0);

 return err;
}
