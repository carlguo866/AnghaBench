
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct oce_mq_sge {void* length; void* pa_lo; void* pa_hi; } ;
struct TYPE_10__ {struct oce_mq_sge* sgl; } ;
struct TYPE_11__ {TYPE_3__ u1; } ;
struct TYPE_12__ {TYPE_4__ u0; } ;
struct TYPE_8__ {int sge_count; scalar_t__ embedded; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct oce_mbx {int payload_length; TYPE_5__ payload; TYPE_2__ u0; } ;
struct TYPE_13__ {int paddr; } ;
typedef int POCE_SOFTC ;
typedef TYPE_6__* POCE_DMA_MEM ;


 int DW_SWAP (int ,int) ;
 int OCE_BMBX_RHDR_SZ ;
 int bzero (struct oce_mbx*,int) ;
 void* htole32 (int) ;
 int oce_mbox_post (int ,struct oce_mbx*,int *) ;
 int u32ptr (struct oce_mbx*) ;
 int upper_32_bits (int) ;

int
oce_pass_through_mbox(POCE_SOFTC sc, POCE_DMA_MEM dma_mem, uint32_t req_size)
{
 struct oce_mbx mbx;
 struct oce_mq_sge *sgl;
 int rc = 0;

 bzero(&mbx, sizeof(struct oce_mbx));

 mbx.u0.s.embedded = 0;
 mbx.payload_length = req_size;
 mbx.u0.s.sge_count = 1;
 sgl = &mbx.payload.u0.u1.sgl[0];
 sgl->pa_hi = htole32(upper_32_bits(dma_mem->paddr));
 sgl->pa_lo = htole32((dma_mem->paddr) & 0xFFFFFFFF);
 sgl->length = htole32(req_size);

 DW_SWAP(u32ptr(&mbx), mbx.payload_length + OCE_BMBX_RHDR_SZ);

 rc = oce_mbox_post(sc, &mbx, ((void*)0));
 return rc;
}
