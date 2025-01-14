
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_device {int dummy; } ;
struct p2p_data {int ssid_set; size_t ssid_len; TYPE_2__* cfg; int * intended_addr; int * ssid; TYPE_1__* p2ps_prov; } ;
struct TYPE_4__ {int (* get_go_info ) (int ,int *,int *,size_t*,int*,unsigned int*) ;int * dev_addr; int cb_ctx; } ;
struct TYPE_3__ {unsigned int force_freq; scalar_t__ pref_freq; } ;


 int ETH_ALEN ;
 int SSID_MAX_LEN ;
 int p2p_buf_add_group_id (struct wpabuf*,int *,int *,size_t) ;
 int p2p_buf_add_intended_addr (struct wpabuf*,int *) ;
 int p2p_build_ssid (struct p2p_data*,int *,size_t*) ;
 int p2p_prepare_channel (struct p2p_data*,struct p2p_device*,unsigned int,int ,int ) ;
 int stub1 (int ,int *,int *,size_t*,int*,unsigned int*) ;

__attribute__((used)) static void p2ps_add_new_group_info(struct p2p_data *p2p,
        struct p2p_device *dev,
        struct wpabuf *buf)
{
 int found;
 u8 intended_addr[ETH_ALEN];
 u8 ssid[SSID_MAX_LEN];
 size_t ssid_len;
 int group_iface;
 unsigned int force_freq;

 if (!p2p->cfg->get_go_info)
  return;

 found = p2p->cfg->get_go_info(
  p2p->cfg->cb_ctx, intended_addr, ssid,
  &ssid_len, &group_iface, &force_freq);
 if (found) {
  if (force_freq > 0) {
   p2p->p2ps_prov->force_freq = force_freq;
   p2p->p2ps_prov->pref_freq = 0;

   if (dev)
    p2p_prepare_channel(p2p, dev, force_freq, 0, 0);
  }
  p2p_buf_add_group_id(buf, p2p->cfg->dev_addr,
         ssid, ssid_len);

  if (group_iface)
   p2p_buf_add_intended_addr(buf, p2p->intended_addr);
  else
   p2p_buf_add_intended_addr(buf, intended_addr);
 } else {
  if (!p2p->ssid_set) {
   p2p_build_ssid(p2p, p2p->ssid, &p2p->ssid_len);
   p2p->ssid_set = 1;
  }


  p2p_buf_add_group_id(buf, p2p->cfg->dev_addr,
         p2p->ssid, p2p->ssid_len);

  if (group_iface)
   p2p_buf_add_intended_addr(
    buf, p2p->intended_addr);
  else
   p2p_buf_add_intended_addr(
    buf, p2p->cfg->dev_addr);
 }
}
