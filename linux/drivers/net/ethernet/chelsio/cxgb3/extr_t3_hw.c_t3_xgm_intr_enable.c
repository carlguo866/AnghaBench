
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct port_info {TYPE_1__ mac; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_XGM_XGM_INT_ENABLE ;
 int XGM_EXTRA_INTR_MASK ;
 struct port_info* adap2pinfo (struct adapter*,int) ;
 int t3_write_reg (struct adapter*,scalar_t__,int ) ;

void t3_xgm_intr_enable(struct adapter *adapter, int idx)
{
 struct port_info *pi = adap2pinfo(adapter, idx);

 t3_write_reg(adapter, A_XGM_XGM_INT_ENABLE + pi->mac.offset,
       XGM_EXTRA_INTR_MASK);
}
