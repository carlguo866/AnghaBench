
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_msg_hdr {size_t length; int msg_complete; scalar_t__ internal; scalar_t__ reserved; scalar_t__ dma_ring; scalar_t__ me_addr; scalar_t__ host_addr; } ;



__attribute__((used)) static inline void mei_hbm_hdr(struct mei_msg_hdr *hdr, size_t length)
{
 hdr->host_addr = 0;
 hdr->me_addr = 0;
 hdr->length = length;
 hdr->msg_complete = 1;
 hdr->dma_ring = 0;
 hdr->reserved = 0;
 hdr->internal = 0;
}
