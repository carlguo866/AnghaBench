
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; scalar_t__ target_lun; int target_id; int func_code; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uintmax_t ;
struct hpt_iop_srb {int dma_map; struct hpt_iop_hba* hba; union ccb* ccb; } ;
struct hpt_iop_hba {int max_sg_count; TYPE_2__* ops; int io_dmat; } ;
typedef int bus_dma_segment_t ;
struct TYPE_4__ {int (* post_req ) (struct hpt_iop_hba*,struct hpt_iop_srb*,int *,int) ;} ;


 int CAM_BUSY ;
 int KdPrint (char*) ;
 int bus_dmamap_unload (int ,int ) ;
 int hptiop_free_srb (struct hpt_iop_hba*,struct hpt_iop_srb*) ;
 int stub1 (struct hpt_iop_hba*,struct hpt_iop_srb*,int *,int) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void hptiop_post_scsi_command(void *arg, bus_dma_segment_t *segs,
     int nsegs, int error)
{
 struct hpt_iop_srb *srb = (struct hpt_iop_srb *)arg;
 union ccb *ccb = srb->ccb;
 struct hpt_iop_hba *hba = srb->hba;

 if (error || nsegs > hba->max_sg_count) {
  KdPrint(("hptiop: func_code=%x tid=%x lun=%jx nsegs=%d\n",
   ccb->ccb_h.func_code,
   ccb->ccb_h.target_id,
   (uintmax_t)ccb->ccb_h.target_lun, nsegs));
  ccb->ccb_h.status = CAM_BUSY;
  bus_dmamap_unload(hba->io_dmat, srb->dma_map);
  hptiop_free_srb(hba, srb);
  xpt_done(ccb);
  return;
 }

 hba->ops->post_req(hba, srb, segs, nsegs);
}
