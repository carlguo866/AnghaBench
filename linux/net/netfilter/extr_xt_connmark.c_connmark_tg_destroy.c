
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {int family; int net; } ;


 int nf_ct_netns_put (int ,int ) ;

__attribute__((used)) static void connmark_tg_destroy(const struct xt_tgdtor_param *par)
{
 nf_ct_netns_put(par->net, par->family);
}
