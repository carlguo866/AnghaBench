
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {char* body; } ;
struct TYPE_7__ {TYPE_2__ reply; } ;
struct TYPE_5__ {int type; int len; } ;
struct xs_stored_msg {TYPE_3__ u; TYPE_1__ hdr; } ;
typedef enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;
struct TYPE_8__ {int reply_lock; int reply_list; } ;


 int EWOULDBLOCK ;
 int M_XENSTORE ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct xs_stored_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct xs_stored_msg*,int ) ;
 int free (struct xs_stored_msg*,int ) ;
 int hz ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_sleep (int *,int *,int ,char*,int) ;
 int mtx_unlock (int *) ;
 TYPE_4__ xs ;

__attribute__((used)) static int
xs_read_reply(enum xsd_sockmsg_type *type, u_int *len, void **result)
{
 struct xs_stored_msg *msg;
 char *body;
 int error;

 mtx_lock(&xs.reply_lock);
 while (TAILQ_EMPTY(&xs.reply_list)) {
  error = mtx_sleep(&xs.reply_list, &xs.reply_lock, 0, "xswait",
      hz/10);
  if (error && error != EWOULDBLOCK) {
   mtx_unlock(&xs.reply_lock);
   return (error);
  }
 }
 msg = TAILQ_FIRST(&xs.reply_list);
 TAILQ_REMOVE(&xs.reply_list, msg, list);
 mtx_unlock(&xs.reply_lock);

 *type = msg->hdr.type;
 if (len)
  *len = msg->hdr.len;
 body = msg->u.reply.body;

 free(msg, M_XENSTORE);
 *result = body;
 return (0);
}
