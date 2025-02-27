
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


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_14__ {scalar_t__ port_type; } ;
typedef TYPE_4__ sli4_t ;
struct TYPE_11__ {int request_length; scalar_t__ version; scalar_t__ timeout; int subsystem; int opcode; } ;
struct TYPE_15__ {int desired_write_length; int write_offset; int host_buffer_descriptor_count; scalar_t__ host_buffer_descriptor; int object_name; void* eof; void* noc; TYPE_1__ hdr; } ;
typedef TYPE_5__ sli4_req_common_write_object_t ;
struct TYPE_12__ {int buffer_address_high; int buffer_address_low; } ;
struct TYPE_13__ {TYPE_2__ data; } ;
struct TYPE_16__ {int buffer_length; TYPE_3__ u; int bde_type; } ;
typedef TYPE_6__ sli4_bde_t ;
struct TYPE_17__ {int phys; } ;
typedef TYPE_7__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_BDE_TYPE_BDE_64 ;
 int SLI4_OPC_COMMON_WRITE_OBJECT ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_strncpy (int ,char*,int) ;
 int sli_cmd_sli_config (TYPE_4__*,void*,size_t,int,int *) ;

int32_t
sli_cmd_common_write_object(sli4_t *sli4, void *buf, size_t size,
  uint16_t noc, uint16_t eof, uint32_t desired_write_length,
  uint32_t offset,
  char *object_name,
  ocs_dma_t *dma)
{
 sli4_req_common_write_object_t *wr_obj = ((void*)0);
 uint32_t sli_config_off = 0;
 sli4_bde_t *host_buffer;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,
    sizeof (sli4_req_common_write_object_t) + sizeof (sli4_bde_t),
    ((void*)0));
 }

 wr_obj = (sli4_req_common_write_object_t *)((uint8_t *)buf + sli_config_off);

 wr_obj->hdr.opcode = SLI4_OPC_COMMON_WRITE_OBJECT;
 wr_obj->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 wr_obj->hdr.request_length = sizeof(*wr_obj) - 4*sizeof(uint32_t) + sizeof(sli4_bde_t);
 wr_obj->hdr.timeout = 0;
 wr_obj->hdr.version = 0;

 wr_obj->noc = noc;
 wr_obj->eof = eof;
 wr_obj->desired_write_length = desired_write_length;
 wr_obj->write_offset = offset;
 ocs_strncpy(wr_obj->object_name, object_name, sizeof(wr_obj->object_name));
 wr_obj->host_buffer_descriptor_count = 1;

 host_buffer = (sli4_bde_t *)wr_obj->host_buffer_descriptor;


 host_buffer->bde_type = SLI4_BDE_TYPE_BDE_64;
 host_buffer->buffer_length = desired_write_length;
 host_buffer->u.data.buffer_address_low = ocs_addr32_lo(dma->phys);
 host_buffer->u.data.buffer_address_high = ocs_addr32_hi(dma->phys);


 return(sli_config_off + sizeof(sli4_req_common_write_object_t) + sizeof (sli4_bde_t));
}
