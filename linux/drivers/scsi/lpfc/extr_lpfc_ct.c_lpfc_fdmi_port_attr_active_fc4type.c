
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {TYPE_1__* phba; } ;
struct TYPE_4__ {int* AttrTypes; } ;
struct lpfc_fdmi_attr_entry {TYPE_2__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;
struct TYPE_3__ {int cfg_enable_fc4_type; } ;


 int FOURBYTES ;
 int LPFC_ENABLE_NVME ;
 int RPRT_ACTIVE_FC4_TYPES ;
 void* cpu_to_be16 (int) ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_active_fc4type(struct lpfc_vport *vport,
       struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, 32);

 ae->un.AttrTypes[3] = 0x02;
 ae->un.AttrTypes[2] = 0x01;
 ae->un.AttrTypes[7] = 0x01;


 if (vport->phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME)
  ae->un.AttrTypes[6] = 0x1;

 size = FOURBYTES + 32;
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_ACTIVE_FC4_TYPES);
 return size;
}
