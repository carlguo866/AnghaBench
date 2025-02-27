
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ lun; int sdev_bflags; scalar_t__ hostdata; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct bfad_itnim_data_s {TYPE_1__* itnim; } ;
struct bfa_s {int dummy; } ;
struct TYPE_4__ {struct bfa_s* bfa; } ;
struct TYPE_3__ {TYPE_2__* bfa_itnim; } ;


 scalar_t__ BFA_LUNMASK_ENABLED ;
 scalar_t__ BFA_STATUS_OK ;
 int BLIST_NOREPORTLUN ;
 int BLIST_SPARSELUN ;
 int ENXIO ;
 scalar_t__ bfa_get_lun_mask_status (struct bfa_s*) ;
 scalar_t__ bfad_im_check_if_make_lun_visible (struct scsi_device*,struct fc_rport*) ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int scsi_target (struct scsi_device*) ;
 struct fc_rport* starget_to_rport (int ) ;

__attribute__((used)) static int
bfad_im_slave_alloc(struct scsi_device *sdev)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));
 struct bfad_itnim_data_s *itnim_data;
 struct bfa_s *bfa;

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 itnim_data = (struct bfad_itnim_data_s *) rport->dd_data;
 bfa = itnim_data->itnim->bfa_itnim->bfa;

 if (bfa_get_lun_mask_status(bfa) == BFA_LUNMASK_ENABLED) {




  if (sdev->lun == 0) {
   sdev->sdev_bflags |= BLIST_NOREPORTLUN |
          BLIST_SPARSELUN;
   goto done;
  }





  if (bfad_im_check_if_make_lun_visible(sdev, rport) !=
       BFA_STATUS_OK)
   return -ENXIO;
 }
done:
 sdev->hostdata = rport->dd_data;

 return 0;
}
