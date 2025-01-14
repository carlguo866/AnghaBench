
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int ns_id; struct nvme_dev* dev; } ;
struct nvme_id_ns {int dpc; scalar_t__ dps; } ;
struct nvme_id_ctrl {int vwc; } ;
struct nvme_dev {TYPE_1__* pci_dev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int EXTENDED_INQUIRY_DATA_PAGE_LENGTH ;
 int GFP_KERNEL ;
 int INQ_EXTENDED_INQUIRY_DATA_PAGE ;
 int SNTI_TRANSLATION_SUCCESS ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int memset (int*,int ,int ) ;
 int min (int,int ) ;
 int nvme_identify (struct nvme_dev*,int ,int,int ) ;
 int nvme_trans_copy_to_user (struct sg_io_hdr*,int*,int) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;

__attribute__((used)) static int nvme_trans_ext_inq_page(struct nvme_ns *ns, struct sg_io_hdr *hdr,
     int alloc_len)
{
 u8 *inq_response;
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_dev *dev = ns->dev;
 dma_addr_t dma_addr;
 void *mem;
 struct nvme_id_ctrl *id_ctrl;
 struct nvme_id_ns *id_ns;
 int xfer_len;
 u8 microcode = 0x80;
 u8 spt;
 u8 spt_lut[8] = {0, 0, 2, 1, 4, 6, 5, 7};
 u8 grd_chk, app_chk, ref_chk, protect;
 u8 uask_sup = 0x20;
 u8 v_sup;
 u8 luiclr = 0x01;

 inq_response = kmalloc(EXTENDED_INQUIRY_DATA_PAGE_LENGTH, GFP_KERNEL);
 if (inq_response == ((void*)0)) {
  res = -ENOMEM;
  goto out_mem;
 }

 mem = dma_alloc_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns),
       &dma_addr, GFP_KERNEL);
 if (mem == ((void*)0)) {
  res = -ENOMEM;
  goto out_dma;
 }


 nvme_sc = nvme_identify(dev, ns->ns_id, 0, dma_addr);
 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out_free;
 if (nvme_sc) {
  res = nvme_sc;
  goto out_free;
 }
 id_ns = mem;
 spt = spt_lut[(id_ns->dpc) & 0x07] << 3;
 (id_ns->dps) ? (protect = 0x01) : (protect = 0);
 grd_chk = protect << 2;
 app_chk = protect << 1;
 ref_chk = protect;


 nvme_sc = nvme_identify(dev, 0, 1, dma_addr);
 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out_free;
 if (nvme_sc) {
  res = nvme_sc;
  goto out_free;
 }
 id_ctrl = mem;
 v_sup = id_ctrl->vwc;

 memset(inq_response, 0, EXTENDED_INQUIRY_DATA_PAGE_LENGTH);
 inq_response[1] = INQ_EXTENDED_INQUIRY_DATA_PAGE;
 inq_response[2] = 0x00;
 inq_response[3] = 0x3C;
 inq_response[4] = microcode | spt | grd_chk | app_chk | ref_chk;
 inq_response[5] = uask_sup;
 inq_response[6] = v_sup;
 inq_response[7] = luiclr;
 inq_response[8] = 0;
 inq_response[9] = 0;

 xfer_len = min(alloc_len, EXTENDED_INQUIRY_DATA_PAGE_LENGTH);
 res = nvme_trans_copy_to_user(hdr, inq_response, xfer_len);

 out_free:
 dma_free_coherent(&dev->pci_dev->dev, sizeof(struct nvme_id_ns), mem,
     dma_addr);
 out_dma:
 kfree(inq_response);
 out_mem:
 return res;
}
