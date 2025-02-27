
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* uwbd_evt_handler_f ) (struct uwb_event*) ;
typedef size_t u8 ;
typedef size_t u16 ;
struct uwbd_evt_type_handler {size_t size; TYPE_3__* uwbd_events; } ;
struct TYPE_7__ {TYPE_1__* rceb; } ;
struct uwb_event {TYPE_5__* rc; TYPE_2__ notif; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_10__ {TYPE_4__ uwb_dev; } ;
struct TYPE_8__ {int (* handler ) (struct uwb_event*) ;} ;
struct TYPE_6__ {size_t bEventType; size_t bEventContext; int wEvent; } ;


 size_t ARRAY_SIZE (struct uwbd_evt_type_handler*) ;
 int EINVAL ;
 int dev_err (int *,char*,size_t,size_t,size_t,int) ;
 size_t le16_to_cpu (int ) ;
 int stub1 (struct uwb_event*) ;
 struct uwbd_evt_type_handler* uwbd_urc_evt_type_handlers ;

__attribute__((used)) static
int uwbd_event_handle_urc(struct uwb_event *evt)
{
 int result = -EINVAL;
 struct uwbd_evt_type_handler *type_table;
 uwbd_evt_handler_f handler;
 u8 type, context;
 u16 event;

 type = evt->notif.rceb->bEventType;
 event = le16_to_cpu(evt->notif.rceb->wEvent);
 context = evt->notif.rceb->bEventContext;

 if (type >= ARRAY_SIZE(uwbd_urc_evt_type_handlers))
  goto out;
 type_table = &uwbd_urc_evt_type_handlers[type];
 if (type_table->uwbd_events == ((void*)0))
  goto out;
 if (event >= type_table->size)
  goto out;
 handler = type_table->uwbd_events[event].handler;
 if (handler == ((void*)0))
  goto out;

 result = (*handler)(evt);
out:
 if (result < 0)
  dev_err(&evt->rc->uwb_dev.dev,
   "UWBD: event 0x%02x/%04x/%02x, handling failed: %d\n",
   type, event, context, result);
 return result;
}
