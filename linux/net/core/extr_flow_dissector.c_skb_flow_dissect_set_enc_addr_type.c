
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_dissector_key_control {int addr_type; } ;
struct flow_dissector {int dummy; } ;
typedef enum flow_dissector_key_id { ____Placeholder_flow_dissector_key_id } flow_dissector_key_id ;


 int FLOW_DISSECTOR_KEY_ENC_CONTROL ;
 int dissector_uses_key (struct flow_dissector*,int ) ;
 struct flow_dissector_key_control* skb_flow_dissector_target (struct flow_dissector*,int ,void*) ;

__attribute__((used)) static void
skb_flow_dissect_set_enc_addr_type(enum flow_dissector_key_id type,
       struct flow_dissector *flow_dissector,
       void *target_container)
{
 struct flow_dissector_key_control *ctrl;

 if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_ENC_CONTROL))
  return;

 ctrl = skb_flow_dissector_target(flow_dissector,
      FLOW_DISSECTOR_KEY_ENC_CONTROL,
      target_container);
 ctrl->addr_type = type;
}
