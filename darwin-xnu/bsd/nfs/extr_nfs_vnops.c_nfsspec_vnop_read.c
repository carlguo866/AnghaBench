
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vnop_read_args {int a_vp; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {TYPE_1__ n_atim; int n_flag; } ;


 int NACC ;
 int VOCALL (int ,int ,struct vnop_read_args*) ;
 int VOFFSET (int ) ;
 TYPE_2__* VTONFS (int ) ;
 int nanotime (struct timespec*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int spec_vnodeop_p ;
 int vnop_read ;

int
nfsspec_vnop_read(
 struct vnop_read_args *ap)






{
 nfsnode_t np = VTONFS(ap->a_vp);
 struct timespec now;
 int error;




 if ((error = nfs_node_lock(np)))
  return (error);
 np->n_flag |= NACC;
 nanotime(&now);
 np->n_atim.tv_sec = now.tv_sec;
 np->n_atim.tv_nsec = now.tv_nsec;
 nfs_node_unlock(np);
 return (VOCALL(spec_vnodeop_p, VOFFSET(vnop_read), ap));
}
