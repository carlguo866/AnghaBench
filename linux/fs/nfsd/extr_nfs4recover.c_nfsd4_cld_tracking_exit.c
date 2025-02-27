
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int dummy; } ;
struct net {int dummy; } ;


 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfs4_cld_state_shutdown (struct net*) ;
 int nfs4_release_reclaim (struct nfsd_net*) ;
 int nfsd4_remove_cld_pipe (struct net*) ;
 int nfsd_net_id ;

__attribute__((used)) static void
nfsd4_cld_tracking_exit(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 nfs4_release_reclaim(nn);
 nfsd4_remove_cld_pipe(net);
 nfs4_cld_state_shutdown(net);
}
