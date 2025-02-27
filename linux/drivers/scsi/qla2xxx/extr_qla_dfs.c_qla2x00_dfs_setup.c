
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* dfs_naqp; void* dfs_tgt_sess; void* dfs_tgt_port_database; } ;
struct qla_hw_data {void* dfs_dir; TYPE_1__ tgt; void* dfs_fce; void* dfs_tgt_counters; void* dfs_fw_resource_cnt; int fce_mutex; int fce; } ;
struct TYPE_6__ {int host_str; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 int IS_QLA81XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA83XX (struct qla_hw_data*) ;
 int QLA2XXX_DRIVER_NAME ;
 int S_IRUSR ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 void* debugfs_create_dir (int ,int *) ;
 void* debugfs_create_file (char*,int,void*,TYPE_2__*,int *) ;
 int dfs_fce_ops ;
 int dfs_fw_resource_cnt_ops ;
 int dfs_naqp_ops ;
 int dfs_tgt_counters_ops ;
 int dfs_tgt_port_database_ops ;
 int dfs_tgt_sess_ops ;
 int mutex_init (int *) ;
 int * qla2x00_dfs_root ;
 int qla2x00_dfs_root_count ;

int
qla2x00_dfs_setup(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (!IS_QLA25XX(ha) && !IS_QLA81XX(ha) && !IS_QLA83XX(ha) &&
     !IS_QLA27XX(ha) && !IS_QLA28XX(ha))
  goto out;
 if (!ha->fce)
  goto out;

 if (qla2x00_dfs_root)
  goto create_dir;

 atomic_set(&qla2x00_dfs_root_count, 0);
 qla2x00_dfs_root = debugfs_create_dir(QLA2XXX_DRIVER_NAME, ((void*)0));

create_dir:
 if (ha->dfs_dir)
  goto create_nodes;

 mutex_init(&ha->fce_mutex);
 ha->dfs_dir = debugfs_create_dir(vha->host_str, qla2x00_dfs_root);

 atomic_inc(&qla2x00_dfs_root_count);

create_nodes:
 ha->dfs_fw_resource_cnt = debugfs_create_file("fw_resource_count",
     S_IRUSR, ha->dfs_dir, vha, &dfs_fw_resource_cnt_ops);

 ha->dfs_tgt_counters = debugfs_create_file("tgt_counters", S_IRUSR,
     ha->dfs_dir, vha, &dfs_tgt_counters_ops);

 ha->tgt.dfs_tgt_port_database = debugfs_create_file("tgt_port_database",
     S_IRUSR, ha->dfs_dir, vha, &dfs_tgt_port_database_ops);

 ha->dfs_fce = debugfs_create_file("fce", S_IRUSR, ha->dfs_dir, vha,
     &dfs_fce_ops);

 ha->tgt.dfs_tgt_sess = debugfs_create_file("tgt_sess",
  S_IRUSR, ha->dfs_dir, vha, &dfs_tgt_sess_ops);

 if (IS_QLA27XX(ha) || IS_QLA83XX(ha) || IS_QLA28XX(ha))
  ha->tgt.dfs_naqp = debugfs_create_file("naqp",
      0400, ha->dfs_dir, vha, &dfs_naqp_ops);
out:
 return 0;
}
