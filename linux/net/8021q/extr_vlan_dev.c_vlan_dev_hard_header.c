
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct vlan_hdr {void* h_vlan_encapsulated_proto; void* h_vlan_TCI; } ;
struct vlan_dev_priv {int flags; unsigned int vlan_id; struct net_device* real_dev; int vlan_proto; } ;
struct sk_buff {int protocol; int priority; } ;
struct net_device {void* dev_addr; } ;


 unsigned short ETH_P_802_2 ;
 unsigned short ETH_P_802_3 ;
 int VLAN_FLAG_REORDER_HDR ;
 unsigned int VLAN_HLEN ;
 int dev_hard_header (struct sk_buff*,struct net_device*,unsigned short,void const*,void const*,unsigned int) ;
 void* htons (unsigned int) ;
 unsigned short ntohs (int ) ;
 struct vlan_hdr* skb_push (struct sk_buff*,unsigned int) ;
 unsigned int vlan_dev_get_egress_qos_mask (struct net_device*,int ) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int vlan_dev_hard_header(struct sk_buff *skb, struct net_device *dev,
    unsigned short type,
    const void *daddr, const void *saddr,
    unsigned int len)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 struct vlan_hdr *vhdr;
 unsigned int vhdrlen = 0;
 u16 vlan_tci = 0;
 int rc;

 if (!(vlan->flags & VLAN_FLAG_REORDER_HDR)) {
  vhdr = skb_push(skb, VLAN_HLEN);

  vlan_tci = vlan->vlan_id;
  vlan_tci |= vlan_dev_get_egress_qos_mask(dev, skb->priority);
  vhdr->h_vlan_TCI = htons(vlan_tci);





  if (type != ETH_P_802_3 && type != ETH_P_802_2)
   vhdr->h_vlan_encapsulated_proto = htons(type);
  else
   vhdr->h_vlan_encapsulated_proto = htons(len);

  skb->protocol = vlan->vlan_proto;
  type = ntohs(vlan->vlan_proto);
  vhdrlen = VLAN_HLEN;
 }


 if (saddr == ((void*)0))
  saddr = dev->dev_addr;


 dev = vlan->real_dev;
 rc = dev_hard_header(skb, dev, type, daddr, saddr, len + vhdrlen);
 if (rc > 0)
  rc += vhdrlen;
 return rc;
}
