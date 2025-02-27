
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
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct bnxt {int cp_nr_rings; int flags; int fw_rx_stats_ext_size; int fw_tx_stats_ext_size; int num_tests; int dev; TYPE_1__* test_info; int pri2cos_valid; int max_tpa_v2; } ;
struct TYPE_20__ {int string; } ;
struct TYPE_19__ {int string; } ;
struct TYPE_18__ {int string; } ;
struct TYPE_17__ {int string; } ;
struct TYPE_16__ {int string; } ;
struct TYPE_15__ {int string; } ;
struct TYPE_14__ {int string; } ;
struct TYPE_13__ {int string; } ;
struct TYPE_12__ {int string; } ;
struct TYPE_11__ {int string; } ;


 int ARRAY_SIZE (char**) ;
 int BNXT_FLAG_PCIE_STATS ;
 int BNXT_FLAG_PORT_STATS ;
 int BNXT_FLAG_PORT_STATS_EXT ;
 int BNXT_NUM_PCIE_STATS ;
 int BNXT_NUM_PORT_STATS ;
 int BNXT_NUM_SW_FUNC_STATS ;
 int BNXT_SUPPORTS_TPA (struct bnxt*) ;
 int ETH_GSTRING_LEN ;


 TYPE_10__* bnxt_pcie_stats_arr ;
 TYPE_9__* bnxt_port_stats_arr ;
 TYPE_8__* bnxt_port_stats_ext_arr ;
 char** bnxt_ring_stats_str ;
 char** bnxt_ring_sw_stats_str ;
 char** bnxt_ring_tpa2_stats_str ;
 char** bnxt_ring_tpa_stats_str ;
 TYPE_7__* bnxt_rx_bytes_pri_arr ;
 TYPE_6__* bnxt_rx_pkts_pri_arr ;
 TYPE_5__* bnxt_sw_func_stats ;
 TYPE_4__* bnxt_tx_bytes_pri_arr ;
 TYPE_3__* bnxt_tx_pkts_pri_arr ;
 TYPE_2__* bnxt_tx_port_stats_ext_arr ;
 int memcpy (int *,int ,int) ;
 int netdev_err (int ,char*,int) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int sprintf (int *,char*,int,char const* const) ;
 int strcpy (int *,int ) ;

__attribute__((used)) static void bnxt_get_strings(struct net_device *dev, u32 stringset, u8 *buf)
{
 struct bnxt *bp = netdev_priv(dev);
 static const char * const *str;
 u32 i, j, num_str;

 switch (stringset) {
 case 129:
  for (i = 0; i < bp->cp_nr_rings; i++) {
   num_str = ARRAY_SIZE(bnxt_ring_stats_str);
   for (j = 0; j < num_str; j++) {
    sprintf(buf, "[%d]: %s", i,
     bnxt_ring_stats_str[j]);
    buf += ETH_GSTRING_LEN;
   }
   if (!BNXT_SUPPORTS_TPA(bp))
    goto skip_tpa_stats;

   if (bp->max_tpa_v2) {
    num_str = ARRAY_SIZE(bnxt_ring_tpa2_stats_str);
    str = bnxt_ring_tpa2_stats_str;
   } else {
    num_str = ARRAY_SIZE(bnxt_ring_tpa_stats_str);
    str = bnxt_ring_tpa_stats_str;
   }
   for (j = 0; j < num_str; j++) {
    sprintf(buf, "[%d]: %s", i, str[j]);
    buf += ETH_GSTRING_LEN;
   }
skip_tpa_stats:
   num_str = ARRAY_SIZE(bnxt_ring_sw_stats_str);
   for (j = 0; j < num_str; j++) {
    sprintf(buf, "[%d]: %s", i,
     bnxt_ring_sw_stats_str[j]);
    buf += ETH_GSTRING_LEN;
   }
  }
  for (i = 0; i < BNXT_NUM_SW_FUNC_STATS; i++) {
   strcpy(buf, bnxt_sw_func_stats[i].string);
   buf += ETH_GSTRING_LEN;
  }

  if (bp->flags & BNXT_FLAG_PORT_STATS) {
   for (i = 0; i < BNXT_NUM_PORT_STATS; i++) {
    strcpy(buf, bnxt_port_stats_arr[i].string);
    buf += ETH_GSTRING_LEN;
   }
  }
  if (bp->flags & BNXT_FLAG_PORT_STATS_EXT) {
   for (i = 0; i < bp->fw_rx_stats_ext_size; i++) {
    strcpy(buf, bnxt_port_stats_ext_arr[i].string);
    buf += ETH_GSTRING_LEN;
   }
   for (i = 0; i < bp->fw_tx_stats_ext_size; i++) {
    strcpy(buf,
           bnxt_tx_port_stats_ext_arr[i].string);
    buf += ETH_GSTRING_LEN;
   }
   if (bp->pri2cos_valid) {
    for (i = 0; i < 8; i++) {
     strcpy(buf,
            bnxt_rx_bytes_pri_arr[i].string);
     buf += ETH_GSTRING_LEN;
    }
    for (i = 0; i < 8; i++) {
     strcpy(buf,
            bnxt_rx_pkts_pri_arr[i].string);
     buf += ETH_GSTRING_LEN;
    }
    for (i = 0; i < 8; i++) {
     strcpy(buf,
            bnxt_tx_bytes_pri_arr[i].string);
     buf += ETH_GSTRING_LEN;
    }
    for (i = 0; i < 8; i++) {
     strcpy(buf,
            bnxt_tx_pkts_pri_arr[i].string);
     buf += ETH_GSTRING_LEN;
    }
   }
  }
  if (bp->flags & BNXT_FLAG_PCIE_STATS) {
   for (i = 0; i < BNXT_NUM_PCIE_STATS; i++) {
    strcpy(buf, bnxt_pcie_stats_arr[i].string);
    buf += ETH_GSTRING_LEN;
   }
  }
  break;
 case 128:
  if (bp->num_tests)
   memcpy(buf, bp->test_info->string,
          bp->num_tests * ETH_GSTRING_LEN);
  break;
 default:
  netdev_err(bp->dev, "bnxt_get_strings invalid request %x\n",
      stringset);
  break;
 }
}
