
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_query_nodeinfo {scalar_t__ qn_nodenum; int qn_domain; int qn_namelen; } ;
struct TYPE_2__ {int pv_major; scalar_t__ pv_minor; } ;
struct dlm_ctxt {scalar_t__ joining_node; int spinlock; TYPE_1__ dlm_locking_proto; } ;


 int EINVAL ;
 int ML_ERROR ;
 struct dlm_ctxt* __dlm_lookup_domain_full (int ,int ) ;
 int dlm_domain_lock ;
 int dlm_match_nodes (struct dlm_ctxt*,struct dlm_query_nodeinfo*) ;
 int mlog (int ,char*,scalar_t__,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_query_nodeinfo_handler(struct o2net_msg *msg, u32 len,
          void *data, void **ret_data)
{
 struct dlm_query_nodeinfo *qn;
 struct dlm_ctxt *dlm = ((void*)0);
 int locked = 0, status = -EINVAL;

 qn = (struct dlm_query_nodeinfo *) msg->buf;

 mlog(0, "Node %u queries nodes on domain %s\n", qn->qn_nodenum,
      qn->qn_domain);

 spin_lock(&dlm_domain_lock);
 dlm = __dlm_lookup_domain_full(qn->qn_domain, qn->qn_namelen);
 if (!dlm) {
  mlog(ML_ERROR, "Node %d queried nodes on domain %s before "
       "join domain\n", qn->qn_nodenum, qn->qn_domain);
  goto bail;
 }

 spin_lock(&dlm->spinlock);
 locked = 1;
 if (dlm->joining_node != qn->qn_nodenum) {
  mlog(ML_ERROR, "Node %d queried nodes on domain %s but "
       "joining node is %d\n", qn->qn_nodenum, qn->qn_domain,
       dlm->joining_node);
  goto bail;
 }


 if (dlm->dlm_locking_proto.pv_major == 1 &&
     dlm->dlm_locking_proto.pv_minor == 0) {
  mlog(ML_ERROR, "Node %d queried nodes on domain %s "
       "but active dlm protocol is %d.%d\n", qn->qn_nodenum,
       qn->qn_domain, dlm->dlm_locking_proto.pv_major,
       dlm->dlm_locking_proto.pv_minor);
  goto bail;
 }

 status = dlm_match_nodes(dlm, qn);

bail:
 if (locked)
  spin_unlock(&dlm->spinlock);
 spin_unlock(&dlm_domain_lock);

 return status;
}
