
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct iscsi_transport {int dummy; } ;
struct iscsi_cls_session {int dev; int sid; struct iscsi_transport* transport; } ;
struct TYPE_4__ {int release; int * parent; } ;
struct iscsi_cls_conn {int conn_list; TYPE_1__ dev; int cid; struct iscsi_transport* transport; int ep_mutex; struct iscsi_cls_conn* dd_data; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ISCSI_DBG_TRANS_CONN (struct iscsi_cls_conn*,char*) ;
 int KERN_ERR ;
 int connlist ;
 int connlock ;
 int dev_set_name (TYPE_1__*,char*,int ,int ) ;
 int device_register (TYPE_1__*) ;
 int get_device (int *) ;
 int iscsi_cls_session_printk (int ,struct iscsi_cls_session*,char*) ;
 int iscsi_conn_release ;
 int kfree (struct iscsi_cls_conn*) ;
 struct iscsi_cls_conn* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int put_device (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transport_register_device (TYPE_1__*) ;

struct iscsi_cls_conn *
iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
{
 struct iscsi_transport *transport = session->transport;
 struct iscsi_cls_conn *conn;
 unsigned long flags;
 int err;

 conn = kzalloc(sizeof(*conn) + dd_size, GFP_KERNEL);
 if (!conn)
  return ((void*)0);
 if (dd_size)
  conn->dd_data = &conn[1];

 mutex_init(&conn->ep_mutex);
 INIT_LIST_HEAD(&conn->conn_list);
 conn->transport = transport;
 conn->cid = cid;


 if (!get_device(&session->dev))
  goto free_conn;

 dev_set_name(&conn->dev, "connection%d:%u", session->sid, cid);
 conn->dev.parent = &session->dev;
 conn->dev.release = iscsi_conn_release;
 err = device_register(&conn->dev);
 if (err) {
  iscsi_cls_session_printk(KERN_ERR, session, "could not "
      "register connection's dev\n");
  goto release_parent_ref;
 }
 transport_register_device(&conn->dev);

 spin_lock_irqsave(&connlock, flags);
 list_add(&conn->conn_list, &connlist);
 spin_unlock_irqrestore(&connlock, flags);

 ISCSI_DBG_TRANS_CONN(conn, "Completed conn creation\n");
 return conn;

release_parent_ref:
 put_device(&session->dev);
free_conn:
 kfree(conn);
 return ((void*)0);
}
