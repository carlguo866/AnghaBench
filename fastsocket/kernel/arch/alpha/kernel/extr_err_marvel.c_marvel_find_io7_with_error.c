
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_50__ TYPE_9__ ;
typedef struct TYPE_49__ TYPE_8__ ;
typedef struct TYPE_48__ TYPE_7__ ;
typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_25__ ;
typedef struct TYPE_41__ TYPE_24__ ;
typedef struct TYPE_40__ TYPE_23__ ;
typedef struct TYPE_39__ TYPE_22__ ;
typedef struct TYPE_38__ TYPE_21__ ;
typedef struct TYPE_37__ TYPE_20__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_19__ ;
typedef struct TYPE_34__ TYPE_18__ ;
typedef struct TYPE_33__ TYPE_17__ ;
typedef struct TYPE_32__ TYPE_16__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct io7 {int pe; TYPE_12__* csrs; TYPE_13__* ports; } ;
struct ev7_pal_io_subpacket {unsigned long po7_error_sum; TYPE_23__* ports; int po7_err_pkt1; int po7_err_pkt0; int po7_ugbge_sym; int po7_crrct_sym; int po7_uncrr_sym; int hei_ctl; int crd_ctl; int hpi_ctl; int io7_uph; int io_sys_rev; int io_asic_rev; } ;
struct ev7_lf_subpackets {int io_pid; struct ev7_pal_io_subpacket* io; } ;
struct TYPE_41__ {unsigned long csr; } ;
struct TYPE_39__ {int csr; } ;
struct TYPE_38__ {int csr; } ;
struct TYPE_37__ {int csr; } ;
struct TYPE_35__ {int csr; } ;
struct TYPE_34__ {int csr; } ;
struct TYPE_33__ {int csr; } ;
struct TYPE_32__ {int csr; } ;
struct TYPE_31__ {int csr; } ;
struct TYPE_30__ {int csr; } ;
struct TYPE_42__ {TYPE_24__ POx_ERR_SUM; TYPE_22__ POx_TLB_ERR; TYPE_21__ POx_DM_CTRL; TYPE_20__ POx_DM_SIZE; TYPE_19__ POx_DM_DEST; TYPE_18__ POx_DM_SOURCE; TYPE_17__ POx_MULT_ERR; TYPE_16__ POx_FIRST_ERR; TYPE_15__ POx_TRANS_SUM; TYPE_14__ POx_SPL_COMPLT; } ;
typedef TYPE_25__ io7_ioport_csrs ;
struct TYPE_50__ {int csr; } ;
struct TYPE_49__ {int csr; } ;
struct TYPE_48__ {unsigned long csr; } ;
struct TYPE_47__ {int csr; } ;
struct TYPE_46__ {int csr; } ;
struct TYPE_45__ {int csr; } ;
struct TYPE_44__ {int csr; } ;
struct TYPE_43__ {int csr; } ;
struct TYPE_40__ {unsigned long pox_err_sum; int pox_tlb_err; int pox_dm_ctrl; int pox_dm_size; int pox_dm_dest; int pox_dm_source; int pox_mult_err; int pox_first_err; int pox_trans_sum; int pox_spl_cmplt; } ;
struct TYPE_36__ {int csr; } ;
struct TYPE_29__ {int enabled; TYPE_25__* csrs; } ;
struct TYPE_26__ {int csr; } ;
struct TYPE_28__ {TYPE_7__ PO7_ERROR_SUM; TYPE_11__* PO7_ERR_PKT; TYPE_10__ PO7_UGBGE_SYM; TYPE_9__ PO7_CRRCT_SYM; TYPE_8__ PO7_UNCRR_SYM; TYPE_6__ HEI_CTL; TYPE_5__ CRD_CTL; TYPE_4__ HPI_CTL; TYPE_3__ IO7_UPH; TYPE_2__ IO_SYS_REV; TYPE_1__ IO_ASIC_REV; } ;
struct TYPE_27__ {int csr; } ;


 int IO7_NUM_PORTS ;
 struct io7* marvel_next_io7 (struct io7*) ;
 int mb () ;
 int memset (struct ev7_pal_io_subpacket*,int,int) ;

__attribute__((used)) static struct ev7_pal_io_subpacket *
marvel_find_io7_with_error(struct ev7_lf_subpackets *lf_subpackets)
{
 struct ev7_pal_io_subpacket *io = lf_subpackets->io;
 struct io7 *io7;
 int i;




 if (!io)
  return ((void*)0);




 memset(io, 0x55, sizeof(*io));

 for (io7 = ((void*)0); ((void*)0) != (io7 = marvel_next_io7(io7)); ) {
  unsigned long err_sum = 0;

  err_sum |= io7->csrs->PO7_ERROR_SUM.csr;
  for (i = 0; i < IO7_NUM_PORTS; i++) {
   if (!io7->ports[i].enabled)
    continue;
   err_sum |= io7->ports[i].csrs->POx_ERR_SUM.csr;
  }




  if (err_sum & (1UL << 63))
   break;
 }




 if (!io7)
  return ((void*)0);






 io->io_asic_rev = io7->csrs->IO_ASIC_REV.csr;
 io->io_sys_rev = io7->csrs->IO_SYS_REV.csr;
 io->io7_uph = io7->csrs->IO7_UPH.csr;
 io->hpi_ctl = io7->csrs->HPI_CTL.csr;
 io->crd_ctl = io7->csrs->CRD_CTL.csr;
 io->hei_ctl = io7->csrs->HEI_CTL.csr;
 io->po7_error_sum = io7->csrs->PO7_ERROR_SUM.csr;
 io->po7_uncrr_sym = io7->csrs->PO7_UNCRR_SYM.csr;
 io->po7_crrct_sym = io7->csrs->PO7_CRRCT_SYM.csr;
 io->po7_ugbge_sym = io7->csrs->PO7_UGBGE_SYM.csr;
 io->po7_err_pkt0 = io7->csrs->PO7_ERR_PKT[0].csr;
 io->po7_err_pkt1 = io7->csrs->PO7_ERR_PKT[1].csr;

 for (i = 0; i < IO7_NUM_PORTS; i++) {
  io7_ioport_csrs *csrs = io7->ports[i].csrs;

  if (!io7->ports[i].enabled)
   continue;

  io->ports[i].pox_err_sum = csrs->POx_ERR_SUM.csr;
  io->ports[i].pox_tlb_err = csrs->POx_TLB_ERR.csr;
  io->ports[i].pox_spl_cmplt = csrs->POx_SPL_COMPLT.csr;
  io->ports[i].pox_trans_sum = csrs->POx_TRANS_SUM.csr;
  io->ports[i].pox_first_err = csrs->POx_FIRST_ERR.csr;
  io->ports[i].pox_mult_err = csrs->POx_MULT_ERR.csr;
  io->ports[i].pox_dm_source = csrs->POx_DM_SOURCE.csr;
  io->ports[i].pox_dm_dest = csrs->POx_DM_DEST.csr;
  io->ports[i].pox_dm_size = csrs->POx_DM_SIZE.csr;
  io->ports[i].pox_dm_ctrl = csrs->POx_DM_CTRL.csr;
  csrs->POx_TLB_ERR.csr = io->ports[i].pox_tlb_err;
  csrs->POx_ERR_SUM.csr = io->ports[i].pox_err_sum;
  mb();
  csrs->POx_ERR_SUM.csr;
 }




 io7->csrs->PO7_ERROR_SUM.csr = io->po7_error_sum;
 mb();
 io7->csrs->PO7_ERROR_SUM.csr;




 lf_subpackets->io_pid = io7->pe;

 return io;
}
