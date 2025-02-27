
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* wwn_t ;
typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ els_code; } ;
struct fc_adisc_s {int nport_id; void* orig_node_name; void* orig_port_name; scalar_t__ orig_HA; TYPE_1__ els_cmd; } ;
typedef int __be16 ;


 scalar_t__ FC_ELS_ADISC ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int ) ;
 int fc_els_rsp_build (struct fchs_s*,int ,int ,int ) ;
 int memset (struct fc_adisc_s*,char,int) ;

__attribute__((used)) static u16
fc_adisc_x_build(struct fchs_s *fchs, struct fc_adisc_s *adisc, u32 d_id,
   u32 s_id, __be16 ox_id, wwn_t port_name,
   wwn_t node_name, u8 els_code)
{
 memset(adisc, '\0', sizeof(struct fc_adisc_s));

 adisc->els_cmd.els_code = els_code;

 if (els_code == FC_ELS_ADISC)
  fc_els_req_build(fchs, d_id, s_id, ox_id);
 else
  fc_els_rsp_build(fchs, d_id, s_id, ox_id);

 adisc->orig_HA = 0;
 adisc->orig_port_name = port_name;
 adisc->orig_node_name = node_name;
 adisc->nport_id = (s_id);

 return sizeof(struct fc_adisc_s);
}
