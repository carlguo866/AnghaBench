
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct fip_header {scalar_t__ fip_subcode; int fip_dl_len; int fip_ver; int fip_op; } ;
struct fcoe_ctlr {scalar_t__ mode; int state; int ctlr_mutex; scalar_t__ map_dest; int ctl_src_addr; } ;
struct ethhdr {int h_dest; } ;
typedef enum fip_state { ____Placeholder_fip_state } fip_state ;


 int FIP_BPW ;
 scalar_t__ FIP_MODE_VN2VN ;
 scalar_t__ FIP_OP_CTRL ;
 scalar_t__ FIP_OP_DISC ;
 scalar_t__ FIP_OP_LS ;
 scalar_t__ FIP_OP_VN2VN ;
 scalar_t__ FIP_SC_ADV ;
 scalar_t__ FIP_SC_CLR_VLINK ;
 int FIP_ST_AUTO ;
 int FIP_ST_ENABLED ;
 int FIP_ST_VNMP_CLAIM ;
 int FIP_ST_VNMP_UP ;
 scalar_t__ FIP_VER ;
 scalar_t__ FIP_VER_DECAPS (int ) ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*) ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int fcoe_all_enode ;
 int fcoe_all_p2p ;
 int fcoe_all_vn2vn ;
 int fcoe_ctlr_recv_adv (struct fcoe_ctlr*,struct sk_buff*) ;
 int fcoe_ctlr_recv_clr_vlink (struct fcoe_ctlr*,struct fip_header*) ;
 int fcoe_ctlr_recv_els (struct fcoe_ctlr*,struct sk_buff*) ;
 int fcoe_ctlr_set_state (struct fcoe_ctlr*,int) ;
 int fcoe_ctlr_vn_recv (struct fcoe_ctlr*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohs (int ) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;

__attribute__((used)) static int fcoe_ctlr_recv_handler(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 struct fip_header *fiph;
 struct ethhdr *eh;
 enum fip_state state;
 u16 op;
 u8 sub;

 if (skb_linearize(skb))
  goto drop;
 if (skb->len < sizeof(*fiph))
  goto drop;
 eh = eth_hdr(skb);
 if (fip->mode == FIP_MODE_VN2VN) {
  if (compare_ether_addr(eh->h_dest, fip->ctl_src_addr) &&
      compare_ether_addr(eh->h_dest, fcoe_all_vn2vn) &&
      compare_ether_addr(eh->h_dest, fcoe_all_p2p))
   goto drop;
 } else if (compare_ether_addr(eh->h_dest, fip->ctl_src_addr) &&
     compare_ether_addr(eh->h_dest, fcoe_all_enode))
  goto drop;
 fiph = (struct fip_header *)skb->data;
 op = ntohs(fiph->fip_op);
 sub = fiph->fip_subcode;

 if (FIP_VER_DECAPS(fiph->fip_ver) != FIP_VER)
  goto drop;
 if (ntohs(fiph->fip_dl_len) * FIP_BPW + sizeof(*fiph) > skb->len)
  goto drop;

 mutex_lock(&fip->ctlr_mutex);
 state = fip->state;
 if (state == FIP_ST_AUTO) {
  fip->map_dest = 0;
  fcoe_ctlr_set_state(fip, FIP_ST_ENABLED);
  state = FIP_ST_ENABLED;
  LIBFCOE_FIP_DBG(fip, "Using FIP mode\n");
 }
 mutex_unlock(&fip->ctlr_mutex);

 if (fip->mode == FIP_MODE_VN2VN && op == FIP_OP_VN2VN)
  return fcoe_ctlr_vn_recv(fip, skb);

 if (state != FIP_ST_ENABLED && state != FIP_ST_VNMP_UP &&
     state != FIP_ST_VNMP_CLAIM)
  goto drop;

 if (op == FIP_OP_LS) {
  fcoe_ctlr_recv_els(fip, skb);
  return 0;
 }

 if (state != FIP_ST_ENABLED)
  goto drop;

 if (op == FIP_OP_DISC && sub == FIP_SC_ADV)
  fcoe_ctlr_recv_adv(fip, skb);
 else if (op == FIP_OP_CTRL && sub == FIP_SC_CLR_VLINK)
  fcoe_ctlr_recv_clr_vlink(fip, fiph);
 kfree_skb(skb);
 return 0;
drop:
 kfree_skb(skb);
 return -1;
}
