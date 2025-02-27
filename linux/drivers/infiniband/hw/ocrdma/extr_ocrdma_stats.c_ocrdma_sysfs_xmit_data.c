
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocrdma_tx_stats {int read_rsp_bytes_hi; int read_rsp_bytes_lo; int read_req_bytes_hi; int read_req_bytes_lo; int write_bytes_hi; int write_bytes_lo; int send_bytes_hi; int send_bytes_lo; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_tx_stats tx_stats; } ;
struct TYPE_2__ {scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;


 int convert_to_64bit (int ,int ) ;

__attribute__((used)) static u64 ocrdma_sysfs_xmit_data(struct ocrdma_dev *dev)
{
 struct ocrdma_rdma_stats_resp *rdma_stats =
  (struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
 struct ocrdma_tx_stats *tx_stats = &rdma_stats->tx_stats;

 return (convert_to_64bit(tx_stats->send_bytes_lo,
     tx_stats->send_bytes_hi) +
  convert_to_64bit(tx_stats->write_bytes_lo,
     tx_stats->write_bytes_hi) +
  convert_to_64bit(tx_stats->read_req_bytes_lo,
     tx_stats->read_req_bytes_hi) +
  convert_to_64bit(tx_stats->read_rsp_bytes_lo,
     tx_stats->read_rsp_bytes_hi))/4;
}
