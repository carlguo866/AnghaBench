
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* flags; } ;
struct TYPE_4__ {int index; TYPE_1__ u; } ;
struct xt_set_info_match_v0 {TYPE_2__ match_set; } ;
struct xt_mtchk_param {int net; struct xt_set_info_match_v0* matchinfo; } ;
typedef scalar_t__ ip_set_id_t ;


 int ENOENT ;
 int ERANGE ;
 int IPSET_DIM_MAX ;
 scalar_t__ IPSET_INVALID_ID ;
 int compat_flags (TYPE_2__*) ;
 scalar_t__ ip_set_nfnl_get_byindex (int ,int ) ;
 int ip_set_nfnl_put (int ,int ) ;
 int pr_info_ratelimited (char*,...) ;

__attribute__((used)) static int
set_match_v0_checkentry(const struct xt_mtchk_param *par)
{
 struct xt_set_info_match_v0 *info = par->matchinfo;
 ip_set_id_t index;

 index = ip_set_nfnl_get_byindex(par->net, info->match_set.index);

 if (index == IPSET_INVALID_ID) {
  pr_info_ratelimited("Cannot find set identified by id %u to match\n",
        info->match_set.index);
  return -ENOENT;
 }
 if (info->match_set.u.flags[IPSET_DIM_MAX - 1] != 0) {
  pr_info_ratelimited("set match dimension is over the limit!\n");
  ip_set_nfnl_put(par->net, info->match_set.index);
  return -ERANGE;
 }


 compat_flags(&info->match_set);

 return 0;
}
