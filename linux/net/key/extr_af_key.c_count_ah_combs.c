
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tmpl {int dummy; } ;
struct xfrm_algo_desc {scalar_t__ available; int pfkey_supported; } ;
struct sadb_prop {int dummy; } ;
struct sadb_comb {int dummy; } ;


 scalar_t__ aalg_tmpl_set (struct xfrm_tmpl const*,struct xfrm_algo_desc const*) ;
 struct xfrm_algo_desc* xfrm_aalg_get_byidx (int) ;

__attribute__((used)) static int count_ah_combs(const struct xfrm_tmpl *t)
{
 int i, sz = 0;

 for (i = 0; ; i++) {
  const struct xfrm_algo_desc *aalg = xfrm_aalg_get_byidx(i);
  if (!aalg)
   break;
  if (!aalg->pfkey_supported)
   continue;
  if (aalg_tmpl_set(t, aalg) && aalg->available)
   sz += sizeof(struct sadb_comb);
 }
 return sz + sizeof(struct sadb_prop);
}
