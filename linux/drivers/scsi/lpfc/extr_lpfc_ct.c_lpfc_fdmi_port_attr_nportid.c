
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int fc_myDID; } ;
struct TYPE_2__ {int AttrInt; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int RPRT_PORT_ID ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_nportid(struct lpfc_vport *vport,
       struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 ae->un.AttrInt = cpu_to_be32(vport->fc_myDID);
 size = FOURBYTES + sizeof(uint32_t);
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_PORT_ID);
 return size;
}
