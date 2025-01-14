
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int RequestFlags; int SMID; } ;
union MEGASAS_REQUEST_DESCRIPTOR_UNION {TYPE_2__ SCSIIO; scalar_t__ Words; } ;
typedef scalar_t__ u16 ;
struct megasas_instance {int dummy; } ;
struct TYPE_3__ {scalar_t__ smid; } ;
struct megasas_cmd {TYPE_1__ context; } ;


 int MEGASAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT ;
 int MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO ;
 int build_mpt_mfi_pass_thru (struct megasas_instance*,struct megasas_cmd*) ;
 int cpu_to_le16 (scalar_t__) ;
 union MEGASAS_REQUEST_DESCRIPTOR_UNION* megasas_get_request_descriptor (struct megasas_instance*,scalar_t__) ;

__attribute__((used)) static union MEGASAS_REQUEST_DESCRIPTOR_UNION *
build_mpt_cmd(struct megasas_instance *instance, struct megasas_cmd *cmd)
{
 union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc = ((void*)0);
 u16 index;

 build_mpt_mfi_pass_thru(instance, cmd);
 index = cmd->context.smid;

 req_desc = megasas_get_request_descriptor(instance, index - 1);

 req_desc->Words = 0;
 req_desc->SCSIIO.RequestFlags = (MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO <<
      MEGASAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT);

 req_desc->SCSIIO.SMID = cpu_to_le16(index);

 return req_desc;
}
