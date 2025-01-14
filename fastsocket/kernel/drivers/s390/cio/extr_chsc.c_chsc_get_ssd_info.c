
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct subchannel_id {int sch_no; int ssid; } ;
struct chsc_ssd_info {int path_mask; int fla_valid_mask; int * fla; TYPE_3__* chpid; } ;
struct TYPE_5__ {int code; } ;
struct TYPE_4__ {int length; int code; } ;
struct chsc_ssd_area {scalar_t__ st; int path_mask; int fla_valid_mask; int * fla; int * chpid; int sch_valid; TYPE_2__ response; int l_sch; int f_sch; int ssid; TYPE_1__ request; } ;
struct TYPE_6__ {int id; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int ) ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ SUBCHANNEL_TYPE_IO ;
 scalar_t__ SUBCHANNEL_TYPE_MSG ;
 int chp_id_init (TYPE_3__*) ;
 int chsc (struct chsc_ssd_area*) ;
 int chsc_error_from_response (int ) ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int) ;
 int memset (struct chsc_ssd_info*,int ,int) ;

int chsc_get_ssd_info(struct subchannel_id schid, struct chsc_ssd_info *ssd)
{
 unsigned long page;
 struct chsc_ssd_area *ssd_area;
 int ccode;
 int ret;
 int i;
 int mask;

 page = get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!page)
  return -ENOMEM;
 ssd_area = (struct chsc_ssd_area *) page;
 ssd_area->request.length = 0x0010;
 ssd_area->request.code = 0x0004;
 ssd_area->ssid = schid.ssid;
 ssd_area->f_sch = schid.sch_no;
 ssd_area->l_sch = schid.sch_no;

 ccode = chsc(ssd_area);

 if (ccode > 0) {
  ret = (ccode == 3) ? -ENODEV : -EBUSY;
  goto out_free;
 }
 ret = chsc_error_from_response(ssd_area->response.code);
 if (ret != 0) {
  CIO_MSG_EVENT(2, "chsc: ssd failed for 0.%x.%04x (rc=%04x)\n",
         schid.ssid, schid.sch_no,
         ssd_area->response.code);
  goto out_free;
 }
 if (!ssd_area->sch_valid) {
  ret = -ENODEV;
  goto out_free;
 }

 ret = 0;
 memset(ssd, 0, sizeof(struct chsc_ssd_info));
 if ((ssd_area->st != SUBCHANNEL_TYPE_IO) &&
     (ssd_area->st != SUBCHANNEL_TYPE_MSG))
  goto out_free;
 ssd->path_mask = ssd_area->path_mask;
 ssd->fla_valid_mask = ssd_area->fla_valid_mask;
 for (i = 0; i < 8; i++) {
  mask = 0x80 >> i;
  if (ssd_area->path_mask & mask) {
   chp_id_init(&ssd->chpid[i]);
   ssd->chpid[i].id = ssd_area->chpid[i];
  }
  if (ssd_area->fla_valid_mask & mask)
   ssd->fla[i] = ssd_area->fla[i];
 }
out_free:
 free_page(page);
 return ret;
}
