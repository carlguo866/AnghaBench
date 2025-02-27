
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct uverbs_attr_bundle {TYPE_7__* ufile; int driver_udata; } ;
struct TYPE_10__ {int cqe; int cq_handle; } ;
struct ib_uverbs_ex_create_cq_resp {int response_length; TYPE_3__ base; } ;
struct ib_uverbs_ex_create_cq {scalar_t__ comp_vector; scalar_t__ comp_channel; int flags; int cqe; int user_handle; } ;
struct TYPE_11__ {int id; struct ib_cq* object; int user_handle; } ;
struct ib_uverbs_completion_event_file {TYPE_4__ uobject; int ev_queue; int async_list; int comp_list; scalar_t__ async_events_reported; scalar_t__ comp_events_reported; } ;
struct ib_ucq_object {TYPE_4__ uobject; int ev_queue; int async_list; int comp_list; scalar_t__ async_events_reported; scalar_t__ comp_events_reported; } ;
struct TYPE_9__ {int (* create_cq ) (struct ib_cq*,struct ib_cq_init_attr*,int *) ;} ;
struct ib_device {TYPE_2__ ops; } ;
struct ib_cq_init_attr {scalar_t__ comp_vector; int flags; int cqe; } ;
struct TYPE_12__ {int type; } ;
struct ib_cq {TYPE_6__ res; int cqe; int usecnt; int * cq_context; int event_handler; int comp_handler; TYPE_4__* uobject; struct ib_device* device; } ;
typedef int resp ;
struct TYPE_13__ {TYPE_1__* device; } ;
struct TYPE_8__ {scalar_t__ num_comp_vectors; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_uverbs_completion_event_file* ERR_PTR (int) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct ib_uverbs_completion_event_file*) ;
 int PTR_ERR (struct ib_uverbs_completion_event_file*) ;
 int RDMA_RESTRACK_CQ ;
 int UVERBS_OBJECT_CQ ;
 int atomic_set (int *,int ) ;
 int ib_cq ;
 int ib_destroy_cq_user (struct ib_cq*,int ) ;
 int ib_uverbs_comp_handler ;
 int ib_uverbs_cq_event_handler ;
 struct ib_uverbs_completion_event_file* ib_uverbs_lookup_comp_file (scalar_t__,struct uverbs_attr_bundle*) ;
 int ib_uverbs_release_ucq (TYPE_7__*,struct ib_uverbs_completion_event_file*,struct ib_uverbs_completion_event_file*) ;
 int kfree (struct ib_cq*) ;
 int memset (struct ib_uverbs_ex_create_cq_resp*,int ,int) ;
 int rdma_restrack_uadd (TYPE_6__*) ;
 struct ib_cq* rdma_zalloc_drv_obj (struct ib_device*,int ) ;
 int stub1 (struct ib_cq*,struct ib_cq_init_attr*,int *) ;
 scalar_t__ uobj_alloc (int ,struct uverbs_attr_bundle*,struct ib_device**) ;
 int uobj_alloc_abort (TYPE_4__*,struct uverbs_attr_bundle*) ;
 int uobj_alloc_commit (TYPE_4__*,struct uverbs_attr_bundle*) ;
 int uverbs_get_cleared_udata (struct uverbs_attr_bundle*) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_cq_resp*,int) ;
 int uverbs_response_length (struct uverbs_attr_bundle*,int) ;

__attribute__((used)) static struct ib_ucq_object *create_cq(struct uverbs_attr_bundle *attrs,
           struct ib_uverbs_ex_create_cq *cmd)
{
 struct ib_ucq_object *obj;
 struct ib_uverbs_completion_event_file *ev_file = ((void*)0);
 struct ib_cq *cq;
 int ret;
 struct ib_uverbs_ex_create_cq_resp resp;
 struct ib_cq_init_attr attr = {};
 struct ib_device *ib_dev;

 if (cmd->comp_vector >= attrs->ufile->device->num_comp_vectors)
  return ERR_PTR(-EINVAL);

 obj = (struct ib_ucq_object *)uobj_alloc(UVERBS_OBJECT_CQ, attrs,
       &ib_dev);
 if (IS_ERR(obj))
  return obj;

 if (cmd->comp_channel >= 0) {
  ev_file = ib_uverbs_lookup_comp_file(cmd->comp_channel, attrs);
  if (IS_ERR(ev_file)) {
   ret = PTR_ERR(ev_file);
   goto err;
  }
 }

 obj->uobject.user_handle = cmd->user_handle;
 obj->comp_events_reported = 0;
 obj->async_events_reported = 0;
 INIT_LIST_HEAD(&obj->comp_list);
 INIT_LIST_HEAD(&obj->async_list);

 attr.cqe = cmd->cqe;
 attr.comp_vector = cmd->comp_vector;
 attr.flags = cmd->flags;

 cq = rdma_zalloc_drv_obj(ib_dev, ib_cq);
 if (!cq) {
  ret = -ENOMEM;
  goto err_file;
 }
 cq->device = ib_dev;
 cq->uobject = &obj->uobject;
 cq->comp_handler = ib_uverbs_comp_handler;
 cq->event_handler = ib_uverbs_cq_event_handler;
 cq->cq_context = ev_file ? &ev_file->ev_queue : ((void*)0);
 atomic_set(&cq->usecnt, 0);

 ret = ib_dev->ops.create_cq(cq, &attr, &attrs->driver_udata);
 if (ret)
  goto err_free;

 obj->uobject.object = cq;
 memset(&resp, 0, sizeof resp);
 resp.base.cq_handle = obj->uobject.id;
 resp.base.cqe = cq->cqe;
 resp.response_length = uverbs_response_length(attrs, sizeof(resp));

 cq->res.type = RDMA_RESTRACK_CQ;
 rdma_restrack_uadd(&cq->res);

 ret = uverbs_response(attrs, &resp, sizeof(resp));
 if (ret)
  goto err_cb;

 ret = uobj_alloc_commit(&obj->uobject, attrs);
 if (ret)
  return ERR_PTR(ret);
 return obj;

err_cb:
 ib_destroy_cq_user(cq, uverbs_get_cleared_udata(attrs));
 cq = ((void*)0);
err_free:
 kfree(cq);
err_file:
 if (ev_file)
  ib_uverbs_release_ucq(attrs->ufile, ev_file, obj);

err:
 uobj_alloc_abort(&obj->uobject, attrs);

 return ERR_PTR(ret);
}
