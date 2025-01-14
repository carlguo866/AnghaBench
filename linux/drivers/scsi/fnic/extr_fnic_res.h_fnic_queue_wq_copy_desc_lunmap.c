
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct vnic_wq_copy {int dummy; } ;
struct TYPE_8__ {void* len; int addr; } ;
struct TYPE_9__ {TYPE_3__ lunmap_req; } ;
struct TYPE_6__ {void* req_id; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_10__ {TYPE_2__ tag; scalar_t__ _resvd; scalar_t__ status; int type; } ;
struct fcpio_host_req {TYPE_4__ u; TYPE_5__ hdr; } ;


 int FCPIO_LUNMAP_REQ ;
 struct fcpio_host_req* vnic_wq_copy_next_desc (struct vnic_wq_copy*) ;
 int vnic_wq_copy_post (struct vnic_wq_copy*) ;

__attribute__((used)) static inline void fnic_queue_wq_copy_desc_lunmap(struct vnic_wq_copy *wq,
        u32 req_id, u64 lunmap_addr,
        u32 lunmap_len)
{
 struct fcpio_host_req *desc = vnic_wq_copy_next_desc(wq);

 desc->hdr.type = FCPIO_LUNMAP_REQ;
 desc->hdr.status = 0;
 desc->hdr._resvd = 0;
 desc->hdr.tag.u.req_id = req_id;

 desc->u.lunmap_req.addr = lunmap_addr;
 desc->u.lunmap_req.len = lunmap_len;

 vnic_wq_copy_post(wq);
}
