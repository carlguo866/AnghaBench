
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int node_num; int cconn; } ;


 int BUG_ON (int) ;
 int mlog (int ,char*,int) ;
 int ocfs2_recovery_thread (struct ocfs2_super*,int) ;

void ocfs2_do_node_down(int node_num, void *data)
{
 struct ocfs2_super *osb = data;

 BUG_ON(osb->node_num == node_num);

 mlog(0, "ocfs2: node down event for %d\n", node_num);

 if (!osb->cconn) {






  return;
 }

 ocfs2_recovery_thread(osb, node_num);
}
