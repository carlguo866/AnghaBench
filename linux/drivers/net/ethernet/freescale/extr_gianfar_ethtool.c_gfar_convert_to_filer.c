
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct filer_table {int index; TYPE_4__* fe; } ;
struct ethtool_usrip4_spec {int dummy; } ;
struct ethtool_tcpip4_spec {int dummy; } ;
struct TYPE_7__ {struct ethtool_tcpip4_spec udp_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct TYPE_6__ {struct ethtool_tcpip4_spec udp_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct TYPE_5__ {scalar_t__ vlan_tci; } ;
struct ethtool_rx_flow_spec {int flow_type; int ring_cookie; TYPE_3__ m_u; TYPE_2__ h_u; TYPE_1__ m_ext; } ;
struct ethhdr {int dummy; } ;
struct TYPE_8__ {int ctrl; int prop; } ;


 int EBUSY ;

 int FLOW_EXT ;

 int MAX_FILER_CACHE_IDX ;
 int RQFCR_AND ;
 int RQFCR_CLE ;
 int RQFCR_PID_L4P ;
 int RQFCR_PID_PRI ;
 int RQFCR_PID_VID ;
 int RQFCR_RJE ;
 int RQFPR_CFI ;
 int RQFPR_IPV4 ;
 int RQFPR_TCP ;
 int RQFPR_UDP ;
 int RQFPR_VLN ;
 int RX_CLS_FLOW_DISC ;



 scalar_t__ cpu_to_be16 (int) ;
 int gfar_set_attribute (int,int,int ,struct filer_table*) ;
 int gfar_set_basic_ip (struct ethtool_tcpip4_spec*,struct ethtool_tcpip4_spec*,struct filer_table*) ;
 int gfar_set_ether (struct ethhdr*,struct ethhdr*,struct filer_table*) ;
 int gfar_set_mask (int,struct filer_table*) ;
 int gfar_set_parse_bits (int,int,struct filer_table*) ;
 int gfar_set_user_ip (struct ethtool_usrip4_spec*,struct ethtool_usrip4_spec*,struct filer_table*) ;
 int vlan_tci_cfi (struct ethtool_rx_flow_spec*) ;
 int vlan_tci_cfim (struct ethtool_rx_flow_spec*) ;
 int vlan_tci_prio (struct ethtool_rx_flow_spec*) ;
 int vlan_tci_priom (struct ethtool_rx_flow_spec*) ;
 int vlan_tci_vid (struct ethtool_rx_flow_spec*) ;
 int vlan_tci_vidm (struct ethtool_rx_flow_spec*) ;

__attribute__((used)) static int gfar_convert_to_filer(struct ethtool_rx_flow_spec *rule,
     struct filer_table *tab)
{
 u32 vlan = 0, vlan_mask = 0;
 u32 id = 0, id_mask = 0;
 u32 cfi = 0, cfi_mask = 0;
 u32 prio = 0, prio_mask = 0;
 u32 old_index = tab->index;


 if ((rule->flow_type & FLOW_EXT) &&
     (rule->m_ext.vlan_tci != cpu_to_be16(0xFFFF))) {
  if (!rule->m_ext.vlan_tci)
   rule->m_ext.vlan_tci = cpu_to_be16(0xFFFF);

  vlan = RQFPR_VLN;
  vlan_mask = RQFPR_VLN;


  id = vlan_tci_vid(rule);
  id_mask = vlan_tci_vidm(rule);
  cfi = vlan_tci_cfi(rule);
  cfi_mask = vlan_tci_cfim(rule);
  prio = vlan_tci_prio(rule);
  prio_mask = vlan_tci_priom(rule);

  if (cfi_mask) {
   if (cfi)
    vlan |= RQFPR_CFI;
   vlan_mask |= RQFPR_CFI;
  }
 }

 switch (rule->flow_type & ~FLOW_EXT) {
 case 129:
  gfar_set_parse_bits(RQFPR_IPV4 | RQFPR_TCP | vlan,
        RQFPR_IPV4 | RQFPR_TCP | vlan_mask, tab);
  gfar_set_basic_ip(&rule->h_u.tcp_ip4_spec,
      &rule->m_u.tcp_ip4_spec, tab);
  break;
 case 128:
  gfar_set_parse_bits(RQFPR_IPV4 | RQFPR_UDP | vlan,
        RQFPR_IPV4 | RQFPR_UDP | vlan_mask, tab);
  gfar_set_basic_ip(&rule->h_u.udp_ip4_spec,
      &rule->m_u.udp_ip4_spec, tab);
  break;
 case 130:
  gfar_set_parse_bits(RQFPR_IPV4 | vlan, RQFPR_IPV4 | vlan_mask,
        tab);
  gfar_set_attribute(132, 0, RQFCR_PID_L4P, tab);
  gfar_set_basic_ip((struct ethtool_tcpip4_spec *)&rule->h_u,
      (struct ethtool_tcpip4_spec *)&rule->m_u,
      tab);
  break;
 case 131:
  gfar_set_parse_bits(RQFPR_IPV4 | vlan, RQFPR_IPV4 | vlan_mask,
        tab);
  gfar_set_user_ip((struct ethtool_usrip4_spec *) &rule->h_u,
     (struct ethtool_usrip4_spec *) &rule->m_u,
     tab);
  break;
 case 132:
  if (vlan)
   gfar_set_parse_bits(vlan, vlan_mask, tab);
  gfar_set_ether((struct ethhdr *) &rule->h_u,
          (struct ethhdr *) &rule->m_u, tab);
  break;
 default:
  return -1;
 }


 if (vlan) {
  gfar_set_attribute(id, id_mask, RQFCR_PID_VID, tab);
  gfar_set_attribute(prio, prio_mask, RQFCR_PID_PRI, tab);
 }


 if (tab->index == old_index) {
  gfar_set_mask(0xFFFFFFFF, tab);
  tab->fe[tab->index].ctrl = 0x20;
  tab->fe[tab->index].prop = 0x0;
  tab->index++;
 }


 tab->fe[tab->index - 1].ctrl &= (~RQFCR_AND);


 if (rule->ring_cookie == RX_CLS_FLOW_DISC)
  tab->fe[tab->index - 1].ctrl |= RQFCR_RJE;
 else
  tab->fe[tab->index - 1].ctrl |= (rule->ring_cookie << 10);


 if (tab->index > (old_index + 2)) {
  tab->fe[old_index + 1].ctrl |= RQFCR_CLE;
  tab->fe[tab->index - 1].ctrl |= RQFCR_CLE;
 }




 if (tab->index > MAX_FILER_CACHE_IDX - 1)
  return -EBUSY;

 return 0;
}
