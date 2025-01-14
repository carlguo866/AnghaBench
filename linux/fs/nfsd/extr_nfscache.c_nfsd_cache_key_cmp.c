
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ k_xid; scalar_t__ k_csum; } ;
struct svc_cacherep {TYPE_1__ c_key; } ;
struct nfsd_net {int payload_misses; } ;


 int memcmp (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int
nfsd_cache_key_cmp(const struct svc_cacherep *key,
   const struct svc_cacherep *rp, struct nfsd_net *nn)
{
 if (key->c_key.k_xid == rp->c_key.k_xid &&
     key->c_key.k_csum != rp->c_key.k_csum)
  ++nn->payload_misses;

 return memcmp(&key->c_key, &rp->c_key, sizeof(key->c_key));
}
