
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {struct nvme_dev* dev; } ;
struct nvme_dev {int dummy; } ;


 int CACHING_MODE_PAGE_WCE_MASK ;
 int ILLEGAL_REQUEST ;



 int NVME_FEAT_VOLATILE_WC ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_CDB ;
 int SCSI_ASC_INVALID_PARAMETER ;
 int SNTI_INTERNAL_ERROR ;
 int SNTI_TRANSLATION_SUCCESS ;
 int nvme_set_features (struct nvme_dev*,int ,unsigned int,int ,int *) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;

__attribute__((used)) static int nvme_trans_modesel_get_mp(struct nvme_ns *ns, struct sg_io_hdr *hdr,
     u8 *mode_page, u8 page_code)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_dev *dev = ns->dev;
 unsigned dword11;

 switch (page_code) {
 case 130:
  dword11 = ((mode_page[2] & CACHING_MODE_PAGE_WCE_MASK) ? 1 : 0);
  nvme_sc = nvme_set_features(dev, NVME_FEAT_VOLATILE_WC, dword11,
         0, ((void*)0));
  res = nvme_trans_status_code(hdr, nvme_sc);
  if (res)
   break;
  if (nvme_sc) {
   res = nvme_sc;
   break;
  }
  break;
 case 129:
  break;
 case 128:

  if ((mode_page[2] & 0x01) != 0 || (mode_page[3] & 0x0F) != 0) {
   res = nvme_trans_completion(hdr,
      SAM_STAT_CHECK_CONDITION,
      ILLEGAL_REQUEST,
      SCSI_ASC_INVALID_PARAMETER,
      SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
   if (!res)
    res = SNTI_INTERNAL_ERROR;
   break;
  }
  break;
 default:
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  if (!res)
   res = SNTI_INTERNAL_ERROR;
  break;
 }

 return res;
}
