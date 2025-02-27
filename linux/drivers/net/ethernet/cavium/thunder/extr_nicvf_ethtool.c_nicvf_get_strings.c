
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct nicvf {int sqs_count; struct nicvf** snicvf; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int BGX_RX_STATS_COUNT ;
 int BGX_TX_STATS_COUNT ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int memcpy (int *,int ,int ) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 TYPE_2__* nicvf_drv_stats ;
 int nicvf_get_qset_strings (struct nicvf*,int **,int) ;
 TYPE_1__* nicvf_hw_stats ;
 int nicvf_n_drv_stats ;
 int nicvf_n_hw_stats ;
 int sprintf (int *,char*,int) ;

__attribute__((used)) static void nicvf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
{
 struct nicvf *nic = netdev_priv(netdev);
 int stats;
 int sqs;

 if (sset != ETH_SS_STATS)
  return;

 for (stats = 0; stats < nicvf_n_hw_stats; stats++) {
  memcpy(data, nicvf_hw_stats[stats].name, ETH_GSTRING_LEN);
  data += ETH_GSTRING_LEN;
 }

 for (stats = 0; stats < nicvf_n_drv_stats; stats++) {
  memcpy(data, nicvf_drv_stats[stats].name, ETH_GSTRING_LEN);
  data += ETH_GSTRING_LEN;
 }

 nicvf_get_qset_strings(nic, &data, 0);

 for (sqs = 0; sqs < nic->sqs_count; sqs++) {
  if (!nic->snicvf[sqs])
   continue;
  nicvf_get_qset_strings(nic->snicvf[sqs], &data, sqs + 1);
 }

 for (stats = 0; stats < BGX_RX_STATS_COUNT; stats++) {
  sprintf(data, "bgx_rxstat%d: ", stats);
  data += ETH_GSTRING_LEN;
 }

 for (stats = 0; stats < BGX_TX_STATS_COUNT; stats++) {
  sprintf(data, "bgx_txstat%d: ", stats);
  data += ETH_GSTRING_LEN;
 }
}
