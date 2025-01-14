
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tp_cpl_stats {int rsp; int req; } ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int nchan; } ;


 int A_TP_MIB_CPL_IN_REQ_0 ;
 int A_TP_MIB_CPL_OUT_RSP_0 ;
 int t4_tp_mib_read (struct adapter*,int ,int,int ,int) ;

void t4_tp_get_cpl_stats(struct adapter *adap, struct tp_cpl_stats *st,
    bool sleep_ok)
{
 int nchan = adap->chip_params->nchan;

 t4_tp_mib_read(adap, st->req, nchan, A_TP_MIB_CPL_IN_REQ_0, sleep_ok);

 t4_tp_mib_read(adap, st->rsp, nchan, A_TP_MIB_CPL_OUT_RSP_0, sleep_ok);
}
