
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int slot_queue_available; int data_use_count; int data_quota; int slot_available_event; int data_quota_event; int id; TYPE_3__* service_quotas; TYPE_2__* local; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_8__ {int slot_queue_recycle; int* slot_queue; } ;
typedef TYPE_2__ VCHIQ_SHARED_STATE_T ;
struct TYPE_9__ {int message_use_count; int message_quota; int slot_use_count; int quota_event; } ;
typedef TYPE_3__ VCHIQ_SERVICE_QUOTA_T ;
struct TYPE_10__ {int msgid; unsigned int size; } ;
typedef TYPE_4__ VCHIQ_HEADER_T ;
typedef int BITSET_T ;


 int BITSET_IS_SET (int *,int) ;
 int BITSET_SET (int *,int) ;
 int BITSET_SIZE (int ) ;
 int BITSET_ZERO (int *) ;
 scalar_t__ SLOT_DATA_FROM_INDEX (TYPE_1__*,int) ;
 int VCHIQ_MAX_SERVICES ;
 scalar_t__ VCHIQ_MSG_DATA ;
 int VCHIQ_MSG_SRCPORT (int) ;
 scalar_t__ VCHIQ_MSG_TYPE (int) ;
 size_t VCHIQ_SLOT_QUEUE_MASK ;
 unsigned int VCHIQ_SLOT_SIZE ;
 int WARN (int,char*) ;
 scalar_t__ calc_stride (unsigned int) ;
 int mb () ;
 int quota_spinlock ;
 int rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up (int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,unsigned int,unsigned int,int,int,unsigned int,...) ;
 int vchiq_log_trace (int ,char*,int ,int,unsigned int,unsigned int,int) ;

__attribute__((used)) static void
process_free_queue(VCHIQ_STATE_T *state)
{
 VCHIQ_SHARED_STATE_T *local = state->local;
 BITSET_T service_found[BITSET_SIZE(VCHIQ_MAX_SERVICES)];
 int slot_queue_available;



 slot_queue_available = state->slot_queue_available;




 mb();

 while (slot_queue_available != local->slot_queue_recycle) {
  unsigned int pos;
  int slot_index = local->slot_queue[slot_queue_available++ &
   VCHIQ_SLOT_QUEUE_MASK];
  char *data = (char *)SLOT_DATA_FROM_INDEX(state, slot_index);
  int data_found = 0;

  rmb();

  vchiq_log_trace(vchiq_core_log_level, "%d: pfq %d=%x %x %x",
   state->id, slot_index, (unsigned int)data,
   local->slot_queue_recycle, slot_queue_available);



  BITSET_ZERO(service_found);

  pos = 0;

  while (pos < VCHIQ_SLOT_SIZE) {
   VCHIQ_HEADER_T *header =
    (VCHIQ_HEADER_T *)(data + pos);
   int msgid = header->msgid;
   if (VCHIQ_MSG_TYPE(msgid) == VCHIQ_MSG_DATA) {
    int port = VCHIQ_MSG_SRCPORT(msgid);
    VCHIQ_SERVICE_QUOTA_T *service_quota =
     &state->service_quotas[port];
    int count;
    spin_lock(&quota_spinlock);
    count = service_quota->message_use_count;
    if (count > 0)
     service_quota->message_use_count =
      count - 1;
    spin_unlock(&quota_spinlock);

    if (count == service_quota->message_quota)



     up(&service_quota->quota_event);
    else if (count == 0) {
     vchiq_log_error(vchiq_core_log_level,
      "service %d "
      "message_use_count=%d "
      "(header %x, msgid %x, "
      "header->msgid %x, "
      "header->size %x)",
      port,
      service_quota->
       message_use_count,
      (unsigned int)header, msgid,
      header->msgid,
      header->size);
     WARN(1, "invalid message use count\n");
    }
    if (!BITSET_IS_SET(service_found, port)) {

     BITSET_SET(service_found, port);

     spin_lock(&quota_spinlock);
     count = service_quota->slot_use_count;
     if (count > 0)
      service_quota->slot_use_count =
       count - 1;
     spin_unlock(&quota_spinlock);

     if (count > 0) {



      up(&service_quota->quota_event);
      vchiq_log_trace(
       vchiq_core_log_level,
       "%d: pfq:%d %x@%x - "
       "slot_use->%d",
       state->id, port,
       header->size,
       (unsigned int)header,
       count - 1);
     } else {
      vchiq_log_error(
       vchiq_core_log_level,
        "service %d "
        "slot_use_count"
        "=%d (header %x"
        ", msgid %x, "
        "header->msgid"
        " %x, header->"
        "size %x)",
       port, count,
       (unsigned int)header,
       msgid,
       header->msgid,
       header->size);
      WARN(1, "bad slot use count\n");
     }
    }

    data_found = 1;
   }

   pos += calc_stride(header->size);
   if (pos > VCHIQ_SLOT_SIZE) {
    vchiq_log_error(vchiq_core_log_level,
     "pfq - pos %x: header %x, msgid %x, "
     "header->msgid %x, header->size %x",
     pos, (unsigned int)header, msgid,
     header->msgid, header->size);
    WARN(1, "invalid slot position\n");
   }
  }

  if (data_found) {
   int count;
   spin_lock(&quota_spinlock);
   count = state->data_use_count;
   if (count > 0)
    state->data_use_count =
     count - 1;
   spin_unlock(&quota_spinlock);
   if (count == state->data_quota)
    up(&state->data_quota_event);
  }

  mb();

  state->slot_queue_available = slot_queue_available;
  up(&state->slot_available_event);
 }
}
