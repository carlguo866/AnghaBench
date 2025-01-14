
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ntb_softc {int peer_msix_good; int peer_msix_done; scalar_t__ msix_xlat; int device; int peer_msix_work; TYPE_3__* reg; int lnk_sta; TYPE_2__* peer_msix_data; TYPE_1__* msix_data; } ;
struct TYPE_6__ {int lnk_sta; } ;
struct TYPE_5__ {scalar_t__ nmd_ofs; scalar_t__ nmd_data; } ;
struct TYPE_4__ {scalar_t__ nmd_data; scalar_t__ nmd_ofs; } ;


 scalar_t__ NTB_MSIX_DATA0 ;
 scalar_t__ NTB_MSIX_DONE ;
 scalar_t__ NTB_MSIX_GUARD ;
 scalar_t__ NTB_MSIX_OFS0 ;
 scalar_t__ NTB_MSIX_RECEIVED ;
 scalar_t__ NTB_MSIX_VER_GUARD ;
 unsigned int XEON_NONLINK_DB_MSIX_BITS ;
 scalar_t__ _xeon_link_is_up (struct ntb_softc*) ;
 int callout_reset (int *,int,void (*) (void*),struct ntb_softc*) ;
 int hz ;
 int intel_ntb_get_msix_info (struct ntb_softc*) ;
 int intel_ntb_peer_spad_write (int ,scalar_t__,scalar_t__) ;
 int intel_ntb_poll_link (struct ntb_softc*) ;
 int intel_ntb_printf (int,char*,unsigned int,scalar_t__) ;
 int intel_ntb_spad_clear (int ) ;
 int intel_ntb_spad_read (int ,scalar_t__,scalar_t__*) ;
 int msix_ready ;
 int ntb_link_event (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static void
intel_ntb_exchange_msix(void *ctx)
{
 struct ntb_softc *ntb;
 uint32_t val;
 unsigned i;

 ntb = ctx;

 if (ntb->peer_msix_good)
  goto msix_good;
 if (ntb->peer_msix_done)
  goto msix_done;



 if (!msix_ready)
  goto reschedule;


 intel_ntb_get_msix_info(ntb);
 for (i = 0; i < XEON_NONLINK_DB_MSIX_BITS; i++) {
  intel_ntb_peer_spad_write(ntb->device, NTB_MSIX_DATA0 + i,
      ntb->msix_data[i].nmd_data);
  intel_ntb_peer_spad_write(ntb->device, NTB_MSIX_OFS0 + i,
      ntb->msix_data[i].nmd_ofs - ntb->msix_xlat);
 }
 intel_ntb_peer_spad_write(ntb->device, NTB_MSIX_GUARD, NTB_MSIX_VER_GUARD);

 intel_ntb_spad_read(ntb->device, NTB_MSIX_GUARD, &val);
 if (val != NTB_MSIX_VER_GUARD)
  goto reschedule;

 for (i = 0; i < XEON_NONLINK_DB_MSIX_BITS; i++) {
  intel_ntb_spad_read(ntb->device, NTB_MSIX_DATA0 + i, &val);
  intel_ntb_printf(2, "remote MSIX data(%u): 0x%x\n", i, val);
  ntb->peer_msix_data[i].nmd_data = val;
  intel_ntb_spad_read(ntb->device, NTB_MSIX_OFS0 + i, &val);
  intel_ntb_printf(2, "remote MSIX addr(%u): 0x%x\n", i, val);
  ntb->peer_msix_data[i].nmd_ofs = val;
 }

 ntb->peer_msix_done = 1;

msix_done:
 intel_ntb_peer_spad_write(ntb->device, NTB_MSIX_DONE, NTB_MSIX_RECEIVED);
 intel_ntb_spad_read(ntb->device, NTB_MSIX_DONE, &val);
 if (val != NTB_MSIX_RECEIVED)
  goto reschedule;

 intel_ntb_spad_clear(ntb->device);
 ntb->peer_msix_good = 1;

 goto reschedule;

msix_good:
 intel_ntb_poll_link(ntb);
 ntb_link_event(ntb->device);
 return;

reschedule:
 ntb->lnk_sta = pci_read_config(ntb->device, ntb->reg->lnk_sta, 2);
 if (_xeon_link_is_up(ntb)) {
  callout_reset(&ntb->peer_msix_work,
      hz * (ntb->peer_msix_good ? 2 : 1) / 10,
      intel_ntb_exchange_msix, ntb);
 } else
  intel_ntb_spad_clear(ntb->device);
}
