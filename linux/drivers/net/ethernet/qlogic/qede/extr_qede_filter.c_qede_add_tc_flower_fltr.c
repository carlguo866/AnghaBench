
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_tuple {scalar_t__ mode; } ;
struct TYPE_6__ {int (* build_hdr ) (TYPE_2__*,void*) ;} ;
struct qede_arfs_fltr_node {int buf_len; int b_is_drop; int rxq_id; void* data; TYPE_2__ tuple; int sw_id; } ;
struct flow_cls_offload {int cookie; TYPE_3__* rule; } ;
typedef int __be16 ;
struct TYPE_7__ {int action; } ;
struct TYPE_5__ {scalar_t__ filter_count; scalar_t__ mode; } ;


 int DP_NOTICE (struct qede_dev*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ QEDE_RFS_MAX_FLTR ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int kfree (struct qede_arfs_fltr_node*) ;
 void* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,struct qede_arfs_tuple*,int) ;
 int qede_configure_arfs_fltr (struct qede_dev*,struct qede_arfs_fltr_node*,int ,int) ;
 int qede_enqueue_fltr_and_config_searcher (struct qede_dev*,struct qede_arfs_fltr_node*,int ) ;
 scalar_t__ qede_flow_find_fltr (struct qede_dev*,struct qede_arfs_tuple*) ;
 int qede_flow_get_min_header_size (struct qede_arfs_tuple*) ;
 scalar_t__ qede_parse_actions (struct qede_dev*,int *) ;
 scalar_t__ qede_parse_flow_attr (struct qede_dev*,int ,TYPE_3__*,struct qede_arfs_tuple*) ;
 int qede_poll_arfs_filter_config (struct qede_dev*,struct qede_arfs_fltr_node*) ;
 int stub1 (TYPE_2__*,void*) ;

int qede_add_tc_flower_fltr(struct qede_dev *edev, __be16 proto,
       struct flow_cls_offload *f)
{
 struct qede_arfs_fltr_node *n;
 int min_hlen, rc = -EINVAL;
 struct qede_arfs_tuple t;

 __qede_lock(edev);

 if (!edev->arfs) {
  rc = -EPERM;
  goto unlock;
 }


 if (qede_parse_flow_attr(edev, proto, f->rule, &t))
  goto unlock;


 if ((edev->arfs->filter_count && edev->arfs->mode != t.mode) ||
     edev->arfs->filter_count == QEDE_RFS_MAX_FLTR) {
  DP_NOTICE(edev,
     "Filter configuration invalidated, filter mode=0x%x, configured mode=0x%x, filter count=0x%x\n",
     t.mode, edev->arfs->mode, edev->arfs->filter_count);
  goto unlock;
 }


 if (qede_parse_actions(edev, &f->rule->action))
  goto unlock;

 if (qede_flow_find_fltr(edev, &t)) {
  rc = -EEXIST;
  goto unlock;
 }

 n = kzalloc(sizeof(*n), GFP_KERNEL);
 if (!n) {
  rc = -ENOMEM;
  goto unlock;
 }

 min_hlen = qede_flow_get_min_header_size(&t);

 n->data = kzalloc(min_hlen, GFP_KERNEL);
 if (!n->data) {
  kfree(n);
  rc = -ENOMEM;
  goto unlock;
 }

 memcpy(&n->tuple, &t, sizeof(n->tuple));

 n->buf_len = min_hlen;
 n->b_is_drop = 1;
 n->sw_id = f->cookie;

 n->tuple.build_hdr(&n->tuple, n->data);

 rc = qede_enqueue_fltr_and_config_searcher(edev, n, 0);
 if (rc)
  goto unlock;

 qede_configure_arfs_fltr(edev, n, n->rxq_id, 1);
 rc = qede_poll_arfs_filter_config(edev, n);

unlock:
 __qede_unlock(edev);
 return rc;
}
