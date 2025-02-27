
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_2__ {int AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int RPRT_SYM_PORTNAME ;
 void* cpu_to_be16 (int) ;
 int lpfc_vport_symbolic_port_name (struct lpfc_vport*,int ,int) ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_symbolic_name(struct lpfc_vport *vport,
      struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t len, size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, 256);

 len = lpfc_vport_symbolic_port_name(vport, ae->un.AttrString, 256);
 len += (len & 3) ? (4 - (len & 3)) : 4;
 size = FOURBYTES + len;
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_SYM_PORTNAME);
 return size;
}
