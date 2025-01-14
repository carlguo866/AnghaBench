
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oe_len; int oe_off; } ;
struct rbd_obj_request {TYPE_1__ ex; } ;
struct ceph_osd_request {int dummy; } ;


 int CEPH_OSD_OP_READ ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct ceph_osd_request*) ;
 int PTR_ERR (struct ceph_osd_request*) ;
 struct ceph_osd_request* __rbd_obj_add_osd_request (struct rbd_obj_request*,int *,int) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 int osd_req_op_extent_init (struct ceph_osd_request*,int ,int ,int ,int ,int ,int ) ;
 int rbd_osd_format_read (struct ceph_osd_request*) ;
 int rbd_osd_setup_data (struct ceph_osd_request*,int ) ;
 int rbd_osd_submit (struct ceph_osd_request*) ;

__attribute__((used)) static int rbd_obj_read_object(struct rbd_obj_request *obj_req)
{
 struct ceph_osd_request *osd_req;
 int ret;

 osd_req = __rbd_obj_add_osd_request(obj_req, ((void*)0), 1);
 if (IS_ERR(osd_req))
  return PTR_ERR(osd_req);

 osd_req_op_extent_init(osd_req, 0, CEPH_OSD_OP_READ,
          obj_req->ex.oe_off, obj_req->ex.oe_len, 0, 0);
 rbd_osd_setup_data(osd_req, 0);
 rbd_osd_format_read(osd_req);

 ret = ceph_osdc_alloc_messages(osd_req, GFP_NOIO);
 if (ret)
  return ret;

 rbd_osd_submit(osd_req);
 return 0;
}
