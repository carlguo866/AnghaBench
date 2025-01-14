
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {scalar_t__ port_type; } ;
typedef TYPE_3__ sli4_t ;
typedef int sli4_res_hdr_t ;
struct TYPE_13__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_16__ {int xri_count; TYPE_2__* page_set; int xri_start; TYPE_1__ hdr; } ;
typedef TYPE_4__ sli4_req_fcoe_post_sgl_pages_t ;
struct TYPE_17__ {int phys; int size; TYPE_4__* virt; } ;
typedef TYPE_5__ ocs_dma_t ;
typedef int int32_t ;
struct TYPE_14__ {void* page1_high; void* page1_low; void* page0_high; void* page0_low; } ;


 int SLI4_OPC_FCOE_POST_SGL_PAGES ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_FCFCOE ;
 int max (int,int) ;
 void* ocs_addr32_hi (int ) ;
 void* ocs_addr32_lo (int ) ;
 int ocs_memset (TYPE_4__*,int ,int ) ;
 int sli_cmd_sli_config (TYPE_3__*,void*,size_t,int,TYPE_5__*) ;

int32_t
sli_cmd_fcoe_post_sgl_pages(sli4_t *sli4, void *buf, size_t size,
  uint16_t xri, uint32_t xri_count, ocs_dma_t *page0[], ocs_dma_t *page1[], ocs_dma_t *dma)
{
 sli4_req_fcoe_post_sgl_pages_t *post = ((void*)0);
 uint32_t sli_config_off = 0;
 uint32_t i;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  uint32_t payload_size;


  payload_size = max(sizeof(sli4_req_fcoe_post_sgl_pages_t),
    sizeof(sli4_res_hdr_t));

  sli_config_off = sli_cmd_sli_config(sli4, buf, size, payload_size,
    dma);
 }
 if (dma) {
  post = dma->virt;
  ocs_memset(post, 0, dma->size);
 } else {
  post = (sli4_req_fcoe_post_sgl_pages_t *)((uint8_t *)buf + sli_config_off);
 }

 post->hdr.opcode = SLI4_OPC_FCOE_POST_SGL_PAGES;
 post->hdr.subsystem = SLI4_SUBSYSTEM_FCFCOE;






 post->hdr.request_length = 4 + (xri_count * (sizeof(uint64_t) * 2));

 post->xri_start = xri;
 post->xri_count = xri_count;

 for (i = 0; i < xri_count; i++) {
  post->page_set[i].page0_low = ocs_addr32_lo(page0[i]->phys);
  post->page_set[i].page0_high = ocs_addr32_hi(page0[i]->phys);
 }

 if (page1) {
  for (i = 0; i < xri_count; i++) {
   post->page_set[i].page1_low = ocs_addr32_lo(page1[i]->phys);
   post->page_set[i].page1_high = ocs_addr32_hi(page1[i]->phys);
  }
 }

 return dma ? sli_config_off : (sli_config_off + sizeof(sli4_req_fcoe_post_sgl_pages_t));
}
