
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct _sas_node {scalar_t__ sas_address; } ;
struct MPT3SAS_ADAPTER {struct _sas_node sas_hba; } ;


 struct _sas_node* mpt3sas_scsih_expander_find_by_sas_address (struct MPT3SAS_ADAPTER*,scalar_t__) ;

__attribute__((used)) static struct _sas_node *
_transport_sas_node_find_by_sas_address(struct MPT3SAS_ADAPTER *ioc,
 u64 sas_address)
{
 if (ioc->sas_hba.sas_address == sas_address)
  return &ioc->sas_hba;
 else
  return mpt3sas_scsih_expander_find_by_sas_address(ioc,
      sas_address);
}
