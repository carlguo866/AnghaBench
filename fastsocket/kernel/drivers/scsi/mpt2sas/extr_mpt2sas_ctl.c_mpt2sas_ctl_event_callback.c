
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
typedef int Mpi2EventNotificationReply_t ;


 int * mpt2sas_base_get_reply_virt_addr (struct MPT2SAS_ADAPTER*,int ) ;
 int mpt2sas_ctl_add_to_event_log (struct MPT2SAS_ADAPTER*,int *) ;

u8
mpt2sas_ctl_event_callback(struct MPT2SAS_ADAPTER *ioc, u8 msix_index,
 u32 reply)
{
 Mpi2EventNotificationReply_t *mpi_reply;

 mpi_reply = mpt2sas_base_get_reply_virt_addr(ioc, reply);
 mpt2sas_ctl_add_to_event_log(ioc, mpi_reply);
 return 1;
}
