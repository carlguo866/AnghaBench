
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int invert; } ;
struct TYPE_8__ {TYPE_3__ v1; TYPE_2__ v0; } ;
struct xt_string_info {int config; int to_offset; int from_offset; TYPE_4__ u; } ;
struct xt_match_param {TYPE_1__* match; struct xt_string_info* matchinfo; } ;
struct ts_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ revision; } ;


 scalar_t__ UINT_MAX ;
 int XT_STRING_FLAG_INVERT ;
 int memset (struct ts_state*,int ,int) ;
 scalar_t__ skb_find_text (struct sk_buff*,int ,int ,int ,struct ts_state*) ;

__attribute__((used)) static bool
string_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_string_info *conf = par->matchinfo;
 struct ts_state state;
 int invert;

 memset(&state, 0, sizeof(struct ts_state));

 invert = (par->match->revision == 0 ? conf->u.v0.invert :
        conf->u.v1.flags & XT_STRING_FLAG_INVERT);

 return (skb_find_text((struct sk_buff *)skb, conf->from_offset,
        conf->to_offset, conf->config, &state)
        != UINT_MAX) ^ invert;
}
