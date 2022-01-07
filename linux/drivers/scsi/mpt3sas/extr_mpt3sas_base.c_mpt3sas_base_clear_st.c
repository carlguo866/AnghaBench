
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsiio_tracker {int smid; int cb_idx; int * scmd; scalar_t__ direct_io; } ;
struct MPT3SAS_ADAPTER {TYPE_1__* chain_lookup; } ;
struct TYPE_2__ {int chain_offset; } ;


 scalar_t__ WARN_ON (int) ;
 int atomic_set (int *,int ) ;

void mpt3sas_base_clear_st(struct MPT3SAS_ADAPTER *ioc,
      struct scsiio_tracker *st)
{
 if (WARN_ON(st->smid == 0))
  return;
 st->cb_idx = 0xFF;
 st->direct_io = 0;
 st->scmd = ((void*)0);
 atomic_set(&ioc->chain_lookup[st->smid - 1].chain_offset, 0);
 st->smid = 0;
}
