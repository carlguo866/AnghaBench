
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct wq_enet_desc {int dummy; } ;
struct vnic_wq {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int VNIC_PADDR_TARGET ;
 struct wq_enet_desc* vnic_wq_next_desc (struct vnic_wq*) ;
 int vnic_wq_post (struct vnic_wq*,void*,scalar_t__,unsigned int,int,int,int,int,int,int) ;
 int wq_enet_desc_enc (struct wq_enet_desc*,int,int ,int ,int ,int,int,int,int ,int,int ,int) ;

__attribute__((used)) static inline void enic_queue_wq_desc_ex(struct vnic_wq *wq,
 void *os_buf, dma_addr_t dma_addr, unsigned int len,
 unsigned int mss_or_csum_offset, unsigned int hdr_len,
 int vlan_tag_insert, unsigned int vlan_tag,
 int offload_mode, int cq_entry, int sop, int eop, int loopback)
{
 struct wq_enet_desc *desc = vnic_wq_next_desc(wq);
 u8 desc_skip_cnt = 1;
 u8 compressed_send = 0;
 u64 wrid = 0;

 wq_enet_desc_enc(desc,
  (u64)dma_addr | VNIC_PADDR_TARGET,
  (u16)len,
  (u16)mss_or_csum_offset,
  (u16)hdr_len, (u8)offload_mode,
  (u8)eop, (u8)cq_entry,
  0,
  (u8)vlan_tag_insert,
  (u16)vlan_tag,
  (u8)loopback);

 vnic_wq_post(wq, os_buf, dma_addr, len, sop, eop, desc_skip_cnt,
   (u8)cq_entry, compressed_send, wrid);
}
