
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mbuf {scalar_t__ m_data; } ;
struct ifnet {int dummy; } ;
typedef int packet_buffer_ref ;
typedef TYPE_2__* la_marker_pdu_ref ;
typedef TYPE_3__* bondport_ref ;
struct TYPE_8__ {scalar_t__ po_enabled; TYPE_1__* po_bond; } ;
struct TYPE_7__ {scalar_t__ lm_marker_tlv_type; } ;
struct TYPE_6__ {scalar_t__ ifb_mode; } ;


 scalar_t__ ETHER_HDR_LEN ;
 int IFEF_BOND ;
 scalar_t__ IF_BOND_MODE_LACP ;
 scalar_t__ LA_MARKER_TLV_TYPE_MARKER ;
 scalar_t__ LA_MARKER_TLV_TYPE_MARKER_RESPONSE ;
 int bond_lock () ;
 TYPE_3__* bond_lookup_port (struct ifnet*) ;
 int bond_unlock () ;
 int bondport_slow_proto_transmit (TYPE_3__*,int ) ;
 int ifnet_eflags (struct ifnet*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
bond_receive_la_marker_pdu(struct mbuf * m, struct ifnet * port_ifp)
{
    la_marker_pdu_ref marker_p;
    bondport_ref p;

    marker_p = (la_marker_pdu_ref)(m->m_data + ETHER_HDR_LEN);
    if (marker_p->lm_marker_tlv_type != LA_MARKER_TLV_TYPE_MARKER) {
 goto failed;
    }
    bond_lock();
    if ((ifnet_eflags(port_ifp) & IFEF_BOND) == 0) {
 bond_unlock();
 goto failed;
    }
    p = bond_lookup_port(port_ifp);
    if (p == ((void*)0) || p->po_enabled == 0
 || p->po_bond->ifb_mode != IF_BOND_MODE_LACP) {
 bond_unlock();
 goto failed;
    }

    marker_p->lm_marker_tlv_type = LA_MARKER_TLV_TYPE_MARKER_RESPONSE;
    bondport_slow_proto_transmit(p, (packet_buffer_ref)m);
    bond_unlock();
    return;

 failed:
    m_freem(m);
    return;
}
