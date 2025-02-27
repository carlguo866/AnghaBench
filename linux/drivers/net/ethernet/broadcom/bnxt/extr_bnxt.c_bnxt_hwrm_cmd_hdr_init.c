
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct input {void* resp_addr; void* target_id; void* cmpl_ring; void* req_type; } ;
struct bnxt {int hwrm_cmd_resp_dma_addr; int hwrm_cmd_kong_resp_dma_addr; } ;


 scalar_t__ bnxt_kong_hwrm_message (struct bnxt*,struct input*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le64 (int ) ;

void bnxt_hwrm_cmd_hdr_init(struct bnxt *bp, void *request, u16 req_type,
       u16 cmpl_ring, u16 target_id)
{
 struct input *req = request;

 req->req_type = cpu_to_le16(req_type);
 req->cmpl_ring = cpu_to_le16(cmpl_ring);
 req->target_id = cpu_to_le16(target_id);
 if (bnxt_kong_hwrm_message(bp, req))
  req->resp_addr = cpu_to_le64(bp->hwrm_cmd_kong_resp_dma_addr);
 else
  req->resp_addr = cpu_to_le64(bp->hwrm_cmd_resp_dma_addr);
}
