
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd4_open {scalar_t__ op_create; scalar_t__ op_createmode; int op_bmval; } ;
struct nfsd4_compound_state {int dummy; } ;
typedef int __be32 ;


 scalar_t__ NFS4_CREATE_EXCLUSIVE4_1 ;
 scalar_t__ NFS4_CREATE_GUARDED ;
 scalar_t__ NFS4_CREATE_UNCHECKED ;
 scalar_t__ NFS4_OPEN_CREATE ;
 int check_attr_support (struct svc_rqst*,struct nfsd4_compound_state*,int ,int ) ;
 int nfs_ok ;
 int nfsd41_ex_attrmask ;
 int nfsd_attrmask ;

__attribute__((used)) static __be32
nfsd4_check_open_attributes(struct svc_rqst *rqstp,
 struct nfsd4_compound_state *cstate, struct nfsd4_open *open)
{
 __be32 status = nfs_ok;

 if (open->op_create == NFS4_OPEN_CREATE) {
  if (open->op_createmode == NFS4_CREATE_UNCHECKED
      || open->op_createmode == NFS4_CREATE_GUARDED)
   status = check_attr_support(rqstp, cstate,
     open->op_bmval, nfsd_attrmask);
  else if (open->op_createmode == NFS4_CREATE_EXCLUSIVE4_1)
   status = check_attr_support(rqstp, cstate,
     open->op_bmval, nfsd41_ex_attrmask);
 }

 return status;
}
