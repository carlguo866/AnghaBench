
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_28__ {int send_frame_seq_id; } ;
struct TYPE_26__ {TYPE_7__ hw; } ;
typedef TYPE_5__ ocs_t ;
struct TYPE_27__ {TYPE_5__* ocs; } ;
typedef TYPE_6__ ocs_node_t ;
typedef TYPE_7__ ocs_hw_t ;
struct TYPE_29__ {TYPE_4__* payload; TYPE_2__* header; } ;
typedef TYPE_8__ ocs_hw_sequence_t ;
struct TYPE_21__ {int phys; void** virt; int size; int len; } ;
struct TYPE_30__ {int d_id; int s_id; int f_ctl; TYPE_17__ payload; TYPE_8__* seq; scalar_t__ parameter; void* ox_id; void* rx_id; void* seq_id; scalar_t__ df_ctl; scalar_t__ seq_cnt; void* type; scalar_t__ cs_ctl; void* info; void* r_ctl; } ;
typedef TYPE_9__ ocs_hw_send_frame_context_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef int int32_t ;
typedef int hdr ;
struct TYPE_20__ {int rx_id; int ox_id; int d_id; int s_id; } ;
typedef TYPE_10__ fc_header_t ;
typedef TYPE_9__ fc_header_le_t ;
struct TYPE_24__ {int size; uintptr_t phys; void** virt; } ;
struct TYPE_25__ {TYPE_3__ dma; } ;
struct TYPE_22__ {TYPE_10__* virt; } ;
struct TYPE_23__ {TYPE_1__ dma; } ;


 int FC_EOFT ;
 int FC_SOFI3 ;
 int fc_be24toh (int ) ;
 int ocs_assert (int,int) ;
 scalar_t__ ocs_atomic_add_return (int *,int) ;
 void* ocs_be16toh (int ) ;
 scalar_t__ ocs_hw_send_frame (TYPE_7__*,void*,int ,int ,TYPE_17__*,TYPE_9__*,int ,TYPE_9__*) ;
 int ocs_log_test (TYPE_5__*,char*,scalar_t__) ;
 int ocs_memcpy (void**,void*,int) ;
 int ocs_memset (TYPE_9__*,int ,int) ;
 int ocs_sframe_common_send_cb ;

__attribute__((used)) static int32_t
ocs_sframe_common_send(ocs_node_t *node, ocs_hw_sequence_t *seq, uint8_t r_ctl, uint8_t info, uint32_t f_ctl,
         uint8_t type, void *payload, uint32_t payload_len)
{
 ocs_t *ocs = node->ocs;
 ocs_hw_t *hw = &ocs->hw;
 ocs_hw_rtn_e rc = 0;
 fc_header_t *behdr = seq->header->dma.virt;
 fc_header_le_t hdr;
 uint32_t s_id = fc_be24toh(behdr->s_id);
 uint32_t d_id = fc_be24toh(behdr->d_id);
 uint16_t ox_id = ocs_be16toh(behdr->ox_id);
 uint16_t rx_id = ocs_be16toh(behdr->rx_id);
 ocs_hw_send_frame_context_t *ctx;

 uint32_t heap_size = seq->payload->dma.size;
 uintptr_t heap_phys_base = seq->payload->dma.phys;
 uint8_t *heap_virt_base = seq->payload->dma.virt;
 uint32_t heap_offset = 0;


 ocs_memset(&hdr, 0, sizeof(hdr));
 hdr.d_id = s_id;
 hdr.r_ctl = r_ctl;
 hdr.info = info;
 hdr.s_id = d_id;
 hdr.cs_ctl = 0;
 hdr.f_ctl = f_ctl;
 hdr.type = type;
 hdr.seq_cnt = 0;
 hdr.df_ctl = 0;





 hdr.seq_id = (uint8_t) ocs_atomic_add_return(&hw->send_frame_seq_id, 1);

 hdr.rx_id = rx_id;
 hdr.ox_id = ox_id;
 hdr.parameter = 0;


 ctx = (void*)(heap_virt_base + heap_offset);
 heap_offset += sizeof(*ctx);
 ocs_assert(heap_offset < heap_size, -1);
 ocs_memset(ctx, 0, sizeof(*ctx));


 ctx->seq = seq;


 ctx->payload.phys = heap_phys_base + heap_offset;
 ctx->payload.virt = heap_virt_base + heap_offset;
 ctx->payload.size = payload_len;
 ctx->payload.len = payload_len;
 heap_offset += payload_len;
 ocs_assert(heap_offset <= heap_size, -1);


 ocs_memcpy(ctx->payload.virt, payload, payload_len);


 rc = ocs_hw_send_frame(&ocs->hw, (void*)&hdr, FC_SOFI3, FC_EOFT, &ctx->payload, ctx,
    ocs_sframe_common_send_cb, ctx);
 if (rc) {
  ocs_log_test(ocs, "ocs_hw_send_frame failed: %d\n", rc);
 }

 return rc ? -1 : 0;
}
