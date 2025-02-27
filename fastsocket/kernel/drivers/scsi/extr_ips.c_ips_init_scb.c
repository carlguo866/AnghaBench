
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_12__ {void* ccsar; void* cccr; } ;
struct TYPE_13__ {TYPE_2__ basic_io; } ;
struct TYPE_11__ {int list; } ;
struct TYPE_15__ {int op_code; TYPE_3__ cmd; TYPE_1__ sg_list; void* sg_busaddr; void* scb_busaddr; int command_id; void* ccsar; } ;
typedef TYPE_5__ ips_scb_t ;
struct TYPE_16__ {TYPE_4__* adapt; TYPE_5__* dummy; } ;
typedef TYPE_6__ ips_ha_t ;
struct TYPE_17__ {int list; } ;
struct TYPE_14__ {void* hw_status_start; } ;
typedef TYPE_7__ IPS_SG_LIST ;
typedef int IPS_IO_CMD ;
typedef int IPS_ADAPTER ;


 scalar_t__ IPS_BIT_ILE ;
 int IPS_MAX_CMDS ;
 int METHOD_TRACE (char*,int) ;
 void* cpu_to_le32 (void*) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static void
ips_init_scb(ips_ha_t * ha, ips_scb_t * scb)
{
 IPS_SG_LIST sg_list;
 uint32_t cmd_busaddr, sg_busaddr;
 METHOD_TRACE("ips_init_scb", 1);

 if (scb == ((void*)0))
  return;

 sg_list.list = scb->sg_list.list;
 cmd_busaddr = scb->scb_busaddr;
 sg_busaddr = scb->sg_busaddr;

 memset(scb, 0, sizeof (ips_scb_t));
 memset(ha->dummy, 0, sizeof (IPS_IO_CMD));


 ha->dummy->op_code = 0xFF;
 ha->dummy->ccsar = cpu_to_le32(ha->adapt->hw_status_start
           + sizeof (IPS_ADAPTER));
 ha->dummy->command_id = IPS_MAX_CMDS;


 scb->scb_busaddr = cmd_busaddr;
 scb->sg_busaddr = sg_busaddr;
 scb->sg_list.list = sg_list.list;


 scb->cmd.basic_io.cccr = cpu_to_le32((uint32_t) IPS_BIT_ILE);
 scb->cmd.basic_io.ccsar = cpu_to_le32(ha->adapt->hw_status_start
           + sizeof (IPS_ADAPTER));
}
