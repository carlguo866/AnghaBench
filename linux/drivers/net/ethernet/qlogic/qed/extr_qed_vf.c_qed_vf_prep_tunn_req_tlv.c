
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vfpf_update_tunn_param_tlv {int dummy; } ;
struct qed_tunn_update_udp_port {int port; scalar_t__ b_update_port; } ;
struct qed_tunn_update_type {int dummy; } ;
typedef enum qed_tunn_mode { ____Placeholder_qed_tunn_mode } qed_tunn_mode ;


 int __qed_vf_prep_tunn_req_tlv (struct vfpf_update_tunn_param_tlv*,struct qed_tunn_update_type*,int,int*) ;

__attribute__((used)) static void
qed_vf_prep_tunn_req_tlv(struct vfpf_update_tunn_param_tlv *p_req,
    struct qed_tunn_update_type *p_src,
    enum qed_tunn_mode mask,
    u8 *p_cls, struct qed_tunn_update_udp_port *p_port,
    u8 *p_update_port, u16 *p_udp_port)
{
 if (p_port->b_update_port) {
  *p_update_port = 1;
  *p_udp_port = p_port->port;
 }

 __qed_vf_prep_tunn_req_tlv(p_req, p_src, mask, p_cls);
}
