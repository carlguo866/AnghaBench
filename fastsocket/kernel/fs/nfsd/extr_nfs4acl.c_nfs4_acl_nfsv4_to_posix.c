
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl_state {int dummy; } ;
struct posix_acl {int dummy; } ;
struct nfs4_acl {int naces; struct nfs4_ace* aces; } ;
struct nfs4_ace {scalar_t__ type; int flag; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 scalar_t__ NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ;
 scalar_t__ NFS4_ACE_ACCESS_DENIED_ACE_TYPE ;
 int NFS4_ACE_INHERIT_ONLY_ACE ;
 unsigned int NFS4_ACL_DIR ;
 unsigned int NFS4_ACL_TYPE_DEFAULT ;
 int NFS4_INHERITANCE_FLAGS ;
 int NFS4_SUPPORTED_FLAGS ;
 int PTR_ERR (struct posix_acl*) ;
 int free_state (struct posix_acl_state*) ;
 int init_state (struct posix_acl_state*,int) ;
 int posix_acl_release (struct posix_acl*) ;
 struct posix_acl* posix_state_to_acl (struct posix_acl_state*,unsigned int) ;
 int process_one_v4_ace (struct posix_acl_state*,struct nfs4_ace*) ;
 int sort_pacl (struct posix_acl*) ;

int nfs4_acl_nfsv4_to_posix(struct nfs4_acl *acl, struct posix_acl **pacl,
       struct posix_acl **dpacl, unsigned int flags)
{
 struct posix_acl_state effective_acl_state, default_acl_state;
 struct nfs4_ace *ace;
 int ret;

 ret = init_state(&effective_acl_state, acl->naces);
 if (ret)
  return ret;
 ret = init_state(&default_acl_state, acl->naces);
 if (ret)
  goto out_estate;
 ret = -EINVAL;
 for (ace = acl->aces; ace < acl->aces + acl->naces; ace++) {
  if (ace->type != NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE &&
      ace->type != NFS4_ACE_ACCESS_DENIED_ACE_TYPE)
   goto out_dstate;
  if (ace->flag & ~NFS4_SUPPORTED_FLAGS)
   goto out_dstate;
  if ((ace->flag & NFS4_INHERITANCE_FLAGS) == 0) {
   process_one_v4_ace(&effective_acl_state, ace);
   continue;
  }
  if (!(flags & NFS4_ACL_DIR))
   goto out_dstate;





  process_one_v4_ace(&default_acl_state, ace);

  if (!(ace->flag & NFS4_ACE_INHERIT_ONLY_ACE))
   process_one_v4_ace(&effective_acl_state, ace);
 }
 *pacl = posix_state_to_acl(&effective_acl_state, flags);
 if (IS_ERR(*pacl)) {
  ret = PTR_ERR(*pacl);
  *pacl = ((void*)0);
  goto out_dstate;
 }
 *dpacl = posix_state_to_acl(&default_acl_state,
      flags | NFS4_ACL_TYPE_DEFAULT);
 if (IS_ERR(*dpacl)) {
  ret = PTR_ERR(*dpacl);
  *dpacl = ((void*)0);
  posix_acl_release(*pacl);
  *pacl = ((void*)0);
  goto out_dstate;
 }
 sort_pacl(*pacl);
 sort_pacl(*dpacl);
 ret = 0;
out_dstate:
 free_state(&default_acl_state);
out_estate:
 free_state(&effective_acl_state);
 return ret;
}
