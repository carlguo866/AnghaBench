
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct ceph_vino {int snap; int ino; } ;
struct ceph_snap_context {int dummy; } ;
struct TYPE_2__ {int pool_ns; int pool; } ;
struct ceph_osd_request {int r_flags; unsigned long long r_data_offset; int r_snapid; int r_base_oid; TYPE_1__ r_base_oloc; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_file_layout {int object_size; int pool_ns; int pool_id; } ;


 int BUG_ON (int) ;
 int CEPH_OSD_FLAG_WRITE ;
 int CEPH_OSD_OP_CREATE ;
 int CEPH_OSD_OP_DELETE ;
 int CEPH_OSD_OP_READ ;
 int CEPH_OSD_OP_TRUNCATE ;
 int CEPH_OSD_OP_WRITE ;
 int CEPH_OSD_OP_ZERO ;
 int ENOMEM ;
 struct ceph_osd_request* ERR_PTR (int) ;
 int GFP_NOFS ;
 int __ceph_osdc_alloc_messages (struct ceph_osd_request*,int ,int,int ) ;
 int calc_layout (struct ceph_file_layout*,unsigned long long,unsigned long long*,unsigned long long*,unsigned long long*,unsigned long long*) ;
 int ceph_oid_printf (int *,char*,int ,unsigned long long) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,struct ceph_snap_context*,int,int,int ) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_try_get_string (int ) ;
 int osd_req_op_extent_init (struct ceph_osd_request*,unsigned int,int,unsigned long long,unsigned long long,unsigned long long,int) ;
 int osd_req_op_init (struct ceph_osd_request*,unsigned int,int,int ) ;

struct ceph_osd_request *ceph_osdc_new_request(struct ceph_osd_client *osdc,
            struct ceph_file_layout *layout,
            struct ceph_vino vino,
            u64 off, u64 *plen,
            unsigned int which, int num_ops,
            int opcode, int flags,
            struct ceph_snap_context *snapc,
            u32 truncate_seq,
            u64 truncate_size,
            bool use_mempool)
{
 struct ceph_osd_request *req;
 u64 objnum = 0;
 u64 objoff = 0;
 u64 objlen = 0;
 int r;

 BUG_ON(opcode != CEPH_OSD_OP_READ && opcode != CEPH_OSD_OP_WRITE &&
        opcode != CEPH_OSD_OP_ZERO && opcode != CEPH_OSD_OP_TRUNCATE &&
        opcode != CEPH_OSD_OP_CREATE && opcode != CEPH_OSD_OP_DELETE);

 req = ceph_osdc_alloc_request(osdc, snapc, num_ops, use_mempool,
     GFP_NOFS);
 if (!req) {
  r = -ENOMEM;
  goto fail;
 }


 r = calc_layout(layout, off, plen, &objnum, &objoff, &objlen);
 if (r)
  goto fail;

 if (opcode == CEPH_OSD_OP_CREATE || opcode == CEPH_OSD_OP_DELETE) {
  osd_req_op_init(req, which, opcode, 0);
 } else {
  u32 object_size = layout->object_size;
  u32 object_base = off - objoff;
  if (!(truncate_seq == 1 && truncate_size == -1ULL)) {
   if (truncate_size <= object_base) {
    truncate_size = 0;
   } else {
    truncate_size -= object_base;
    if (truncate_size > object_size)
     truncate_size = object_size;
   }
  }
  osd_req_op_extent_init(req, which, opcode, objoff, objlen,
           truncate_size, truncate_seq);
 }

 req->r_flags = flags;
 req->r_base_oloc.pool = layout->pool_id;
 req->r_base_oloc.pool_ns = ceph_try_get_string(layout->pool_ns);
 ceph_oid_printf(&req->r_base_oid, "%llx.%08llx", vino.ino, objnum);

 req->r_snapid = vino.snap;
 if (flags & CEPH_OSD_FLAG_WRITE)
  req->r_data_offset = off;

 if (num_ops > 1)





  r = __ceph_osdc_alloc_messages(req, GFP_NOFS, num_ops, 0);
 else
  r = ceph_osdc_alloc_messages(req, GFP_NOFS);
 if (r)
  goto fail;

 return req;

fail:
 ceph_osdc_put_request(req);
 return ERR_PTR(r);
}
