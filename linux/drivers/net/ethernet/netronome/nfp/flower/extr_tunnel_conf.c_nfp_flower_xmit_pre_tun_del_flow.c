
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_tun_pre_tun_rule {int port_idx; int vlan_tci; int flags; } ;
struct nfp_flower_priv {int pre_tun_rule_cnt; } ;
struct TYPE_2__ {int port_idx; int vlan_tci; } ;
struct nfp_fl_payload {TYPE_1__ pre_tun_rule; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int GFP_KERNEL ;
 int NFP_FLOWER_CMSG_TYPE_PRE_TUN_RULE ;
 int NFP_TUN_PRE_TUN_RULE_DEL ;
 int cpu_to_be32 (int ) ;
 int memset (struct nfp_tun_pre_tun_rule*,int ,int) ;
 int nfp_flower_xmit_tun_conf (struct nfp_app*,int ,int,unsigned char*,int ) ;

int nfp_flower_xmit_pre_tun_del_flow(struct nfp_app *app,
         struct nfp_fl_payload *flow)
{
 struct nfp_flower_priv *app_priv = app->priv;
 struct nfp_tun_pre_tun_rule payload;
 u32 tmp_flags = 0;
 int err;

 memset(&payload, 0, sizeof(struct nfp_tun_pre_tun_rule));

 tmp_flags |= NFP_TUN_PRE_TUN_RULE_DEL;
 payload.flags = cpu_to_be32(tmp_flags);
 payload.vlan_tci = flow->pre_tun_rule.vlan_tci;
 payload.port_idx = flow->pre_tun_rule.port_idx;

 err = nfp_flower_xmit_tun_conf(app, NFP_FLOWER_CMSG_TYPE_PRE_TUN_RULE,
           sizeof(struct nfp_tun_pre_tun_rule),
           (unsigned char *)&payload, GFP_KERNEL);
 if (err)
  return err;

 app_priv->pre_tun_rule_cnt--;

 return 0;
}
