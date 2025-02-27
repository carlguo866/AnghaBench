
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_TP_RSS_CONFIG_VRT ;
 int A_TP_RSS_VFH_CONFIG ;
 int A_TP_RSS_VFL_CONFIG ;
 scalar_t__ CHELSIO_T5 ;
 int F_KEYWREN ;
 int F_VFRDEN ;
 int F_VFRDRG ;
 int F_VFWREN ;
 unsigned int M_T6_VFWRADDR ;
 unsigned int M_VFWRADDR ;
 int V_T6_VFWRADDR (unsigned int) ;
 int V_VFWRADDR (unsigned int) ;
 scalar_t__ chip_id (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_pio_write (struct adapter*,int*,int,int ,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_write_rss_vf_config(struct adapter *adapter, unsigned int index,
       u32 vfl, u32 vfh, bool sleep_ok)
{
 u32 vrt, mask, data;

 if (chip_id(adapter) <= CHELSIO_T5) {
  mask = V_VFWRADDR(M_VFWRADDR);
  data = V_VFWRADDR(index);
 } else {
  mask = V_T6_VFWRADDR(M_T6_VFWRADDR);
  data = V_T6_VFWRADDR(index);
 }




 t4_tp_pio_write(adapter, &vfl, 1, A_TP_RSS_VFL_CONFIG, sleep_ok);
 t4_tp_pio_write(adapter, &vfh, 1, A_TP_RSS_VFH_CONFIG, sleep_ok);




 vrt = t4_read_reg(adapter, A_TP_RSS_CONFIG_VRT);
 vrt &= ~(F_VFRDRG | F_VFWREN | F_KEYWREN | mask);
 vrt |= data | F_VFRDEN;
 t4_write_reg(adapter, A_TP_RSS_CONFIG_VRT, vrt);
}
