
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_super_lockres; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_super_unlock(struct ocfs2_super *osb,
   int ex)
{
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 struct ocfs2_lock_res *lockres = &osb->osb_super_lockres;

 if (!ocfs2_mount_local(osb))
  ocfs2_cluster_unlock(osb, lockres, level);
}
