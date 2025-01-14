
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_protocol_version {int dummy; } ;
struct ocfs2_locking_protocol {int lp_max_version; } ;
struct ocfs2_cluster_connection {int cc_namelen; int cc_cluster_name_len; void (* cc_recovery_handler ) (int,void*) ;int cc_version; struct ocfs2_locking_protocol* cc_proto; void* cc_recovery_data; int cc_cluster_name; int cc_name; } ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* connect ) (struct ocfs2_cluster_connection*) ;} ;


 int BUG_ON (int ) ;
 int CLUSTER_NAME_MAX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GROUP_NAME_MAX ;
 TYPE_2__* active_stack ;
 int kfree (struct ocfs2_cluster_connection*) ;
 struct ocfs2_cluster_connection* kzalloc (int,int ) ;
 int locking_max_version ;
 scalar_t__ memcmp (int *,int *,int) ;
 int ocfs2_stack_driver_get (char const*) ;
 int ocfs2_stack_driver_put () ;
 int strlcpy (int ,char const*,int) ;
 int stub1 (struct ocfs2_cluster_connection*) ;

int ocfs2_cluster_connect(const char *stack_name,
     const char *cluster_name,
     int cluster_name_len,
     const char *group,
     int grouplen,
     struct ocfs2_locking_protocol *lproto,
     void (*recovery_handler)(int node_num,
         void *recovery_data),
     void *recovery_data,
     struct ocfs2_cluster_connection **conn)
{
 int rc = 0;
 struct ocfs2_cluster_connection *new_conn;

 BUG_ON(group == ((void*)0));
 BUG_ON(conn == ((void*)0));
 BUG_ON(recovery_handler == ((void*)0));

 if (grouplen > GROUP_NAME_MAX) {
  rc = -EINVAL;
  goto out;
 }

 if (memcmp(&lproto->lp_max_version, &locking_max_version,
     sizeof(struct ocfs2_protocol_version))) {
  rc = -EINVAL;
  goto out;
 }

 new_conn = kzalloc(sizeof(struct ocfs2_cluster_connection),
      GFP_KERNEL);
 if (!new_conn) {
  rc = -ENOMEM;
  goto out;
 }

 strlcpy(new_conn->cc_name, group, GROUP_NAME_MAX + 1);
 new_conn->cc_namelen = grouplen;
 if (cluster_name_len)
  strlcpy(new_conn->cc_cluster_name, cluster_name,
   CLUSTER_NAME_MAX + 1);
 new_conn->cc_cluster_name_len = cluster_name_len;
 new_conn->cc_recovery_handler = recovery_handler;
 new_conn->cc_recovery_data = recovery_data;

 new_conn->cc_proto = lproto;

 new_conn->cc_version = lproto->lp_max_version;


 rc = ocfs2_stack_driver_get(stack_name);
 if (rc)
  goto out_free;

 rc = active_stack->sp_ops->connect(new_conn);
 if (rc) {
  ocfs2_stack_driver_put();
  goto out_free;
 }

 *conn = new_conn;

out_free:
 if (rc)
  kfree(new_conn);

out:
 return rc;
}
