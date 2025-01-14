
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* std_list; TYPE_1__* enh_list; } ;
struct TYPE_12__ {scalar_t__ data_len; int breakup; int sg_len; TYPE_3__ sg_list; scalar_t__ sg_break; } ;
typedef TYPE_4__ ips_scb_t ;
struct TYPE_13__ {scalar_t__ max_xfer; } ;
typedef TYPE_5__ ips_ha_t ;
typedef int dma_addr_t ;
struct TYPE_10__ {void* length; void* address; } ;
struct TYPE_9__ {void* length; void* address_hi; void* address_lo; } ;


 scalar_t__ IPS_USE_ENH_SGLIST (TYPE_5__*) ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int pci_dma_hi32 (int ) ;
 unsigned int pci_dma_lo32 (int ) ;

__attribute__((used)) static int
ips_fill_scb_sg_single(ips_ha_t * ha, dma_addr_t busaddr,
         ips_scb_t * scb, int indx, unsigned int e_len)
{

 int ret_val = 0;

 if ((scb->data_len + e_len) > ha->max_xfer) {
  e_len = ha->max_xfer - scb->data_len;
  scb->breakup = indx;
  ++scb->sg_break;
  ret_val = -1;
 } else {
  scb->breakup = 0;
  scb->sg_break = 0;
 }
 if (IPS_USE_ENH_SGLIST(ha)) {
  scb->sg_list.enh_list[indx].address_lo =
      cpu_to_le32(pci_dma_lo32(busaddr));
  scb->sg_list.enh_list[indx].address_hi =
      cpu_to_le32(pci_dma_hi32(busaddr));
  scb->sg_list.enh_list[indx].length = cpu_to_le32(e_len);
 } else {
  scb->sg_list.std_list[indx].address =
      cpu_to_le32(pci_dma_lo32(busaddr));
  scb->sg_list.std_list[indx].length = cpu_to_le32(e_len);
 }

 ++scb->sg_len;
 scb->data_len += e_len;
 return ret_val;
}
