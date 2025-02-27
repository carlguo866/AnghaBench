
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int portName; } ;
struct lpfc_vport {TYPE_2__ fc_sparam; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_3__ {int AttrWWN; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int RPRT_PORTNAME ;
 void* cpu_to_be16 (int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_wwpn(struct lpfc_vport *vport,
    struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, sizeof(struct lpfc_name));

 memcpy(&ae->un.AttrWWN, &vport->fc_sparam.portName,
        sizeof(struct lpfc_name));
 size = FOURBYTES + sizeof(struct lpfc_name);
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_PORTNAME);
 return size;
}
