
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iser_device {int comps_used; struct iser_comp* comps; TYPE_2__* pd; int event_handler; struct ib_device* ib_device; TYPE_2__* mr; } ;
struct iser_comp {TYPE_2__* cq; scalar_t__ tq; int task; struct iser_device* device; } ;
struct TYPE_8__ {int device_cap_flags; int max_cqe; } ;
struct ib_device {int num_comp_vectors; int name; TYPE_1__ attrs; } ;
struct ib_cq_init_attr {int cqe; int comp_vector; } ;
struct TYPE_9__ {struct TYPE_9__* __internal_mr; } ;


 int IB_CQ_NEXT_COMP ;
 int IB_DEVICE_MEM_MGT_EXTENSIONS ;
 int IB_PD_UNSAFE_GLOBAL_RKEY ;
 int INIT_IB_EVENT_HANDLER (int *,struct ib_device*,int ) ;
 int ISER_DBG (char*,int,int ,int ,int) ;
 int ISER_ERR (char*,...) ;
 int ISER_MAX_CQ_LEN ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int M_ISER_VERBS ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct iser_comp*) ;
 int free (struct iser_comp*,int ) ;
 TYPE_2__* ib_alloc_pd (struct ib_device*,int ) ;
 TYPE_2__* ib_create_cq (struct ib_device*,int ,int ,void*,struct ib_cq_init_attr*) ;
 int ib_dealloc_pd (TYPE_2__*) ;
 int ib_destroy_cq (TYPE_2__*) ;
 scalar_t__ ib_register_event_handler (int *) ;
 scalar_t__ ib_req_notify_cq (TYPE_2__*,int ) ;
 int iser_cq_callback ;
 int iser_cq_event_callback ;
 int iser_cq_tasklet_fn ;
 int iser_event_handler ;
 struct iser_comp* malloc (int,int ,int) ;
 void* min (int ,int ) ;
 int mp_ncpus ;
 scalar_t__ taskqueue_create_fast (char*,int ,int ,scalar_t__*) ;
 int taskqueue_free (scalar_t__) ;
 int taskqueue_start_threads (scalar_t__*,int,int ,char*) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
iser_create_device_ib_res(struct iser_device *device)
{
 struct ib_device *ib_dev = device->ib_device;
 int i, max_cqe;

 if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_MEM_MGT_EXTENSIONS)) {
  ISER_ERR("device %s doesn't support Fastreg, "
    "can't register memory", device->ib_device->name);
  return (1);
 }

 device->comps_used = min(mp_ncpus, device->ib_device->num_comp_vectors);

 device->comps = malloc(device->comps_used * sizeof(*device->comps),
  M_ISER_VERBS, M_WAITOK | M_ZERO);
 if (!device->comps)
  goto comps_err;

 max_cqe = min(ISER_MAX_CQ_LEN, ib_dev->attrs.max_cqe);

 ISER_DBG("using %d CQs, device %s supports %d vectors max_cqe %d",
   device->comps_used, device->ib_device->name,
   device->ib_device->num_comp_vectors, max_cqe);

 device->pd = ib_alloc_pd(device->ib_device, IB_PD_UNSAFE_GLOBAL_RKEY);
 if (IS_ERR(device->pd))
  goto pd_err;

 for (i = 0; i < device->comps_used; i++) {
  struct iser_comp *comp = &device->comps[i];
  struct ib_cq_init_attr cq_attr = {
   .cqe = max_cqe,
   .comp_vector = i,
  };

  comp->device = device;
  comp->cq = ib_create_cq(device->ib_device,
     iser_cq_callback,
     iser_cq_event_callback,
     (void *)comp,
     &cq_attr);
  if (IS_ERR(comp->cq)) {
   comp->cq = ((void*)0);
   goto cq_err;
  }

  if (ib_req_notify_cq(comp->cq, IB_CQ_NEXT_COMP))
   goto cq_err;

  TASK_INIT(&comp->task, 0, iser_cq_tasklet_fn, comp);
  comp->tq = taskqueue_create_fast("iser_taskq", M_NOWAIT,
    taskqueue_thread_enqueue, &comp->tq);
  if (!comp->tq)
   goto tq_err;
  taskqueue_start_threads(&comp->tq, 1, PI_NET, "iser taskq");
 }

 device->mr = device->pd->__internal_mr;
 if (IS_ERR(device->mr))
  goto tq_err;

 INIT_IB_EVENT_HANDLER(&device->event_handler, device->ib_device,
    iser_event_handler);
 if (ib_register_event_handler(&device->event_handler))
  goto tq_err;

 return (0);

tq_err:
 for (i = 0; i < device->comps_used; i++) {
  struct iser_comp *comp = &device->comps[i];
  if (comp->tq)
   taskqueue_free(comp->tq);
 }
cq_err:
 for (i = 0; i < device->comps_used; i++) {
  struct iser_comp *comp = &device->comps[i];
  if (comp->cq)
   ib_destroy_cq(comp->cq);
 }
 ib_dealloc_pd(device->pd);
pd_err:
 free(device->comps, M_ISER_VERBS);
comps_err:
 ISER_ERR("failed to allocate an IB resource");
 return (1);
}
