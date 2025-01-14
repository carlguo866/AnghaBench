
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_ddbs; TYPE_2__* ddb_ext; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ dma_handle; } ;


 unsigned long ALIGN (unsigned long,int) ;
 int ASD_DDB_SIZE ;
 int CTXDOMAIN ;
 int DEVCTXBASE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* asd_alloc_coherent (struct asd_ha_struct*,int,int ) ;
 int asd_extend_devctx_ocm (struct asd_ha_struct*) ;
 int asd_printk (char*,int) ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_addr (struct asd_ha_struct*,int ,scalar_t__) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;
 int max_devs ;

__attribute__((used)) static int asd_extend_devctx(struct asd_ha_struct *asd_ha)
{
 dma_addr_t dma_handle;
 unsigned long dma_addr;
 u32 d;
 int size;

 asd_extend_devctx_ocm(asd_ha);

 asd_ha->hw_prof.ddb_ext = ((void*)0);
 if (max_devs <= asd_ha->hw_prof.max_ddbs || max_devs > 0xFFFF) {
  max_devs = asd_ha->hw_prof.max_ddbs;
  return 0;
 }

 size = (max_devs - asd_ha->hw_prof.max_ddbs + 1) * ASD_DDB_SIZE;

 asd_ha->hw_prof.ddb_ext = asd_alloc_coherent(asd_ha, size, GFP_KERNEL);
 if (!asd_ha->hw_prof.ddb_ext) {
  asd_printk("couldn't allocate memory for %d devices\n",
      max_devs);
  max_devs = asd_ha->hw_prof.max_ddbs;
  return -ENOMEM;
 }
 dma_handle = asd_ha->hw_prof.ddb_ext->dma_handle;
 dma_addr = ALIGN((unsigned long) dma_handle, ASD_DDB_SIZE);
 dma_addr -= asd_ha->hw_prof.max_ddbs * ASD_DDB_SIZE;
 dma_handle = (dma_addr_t) dma_addr;
 asd_write_reg_addr(asd_ha, DEVCTXBASE, dma_handle);
 d = asd_read_reg_dword(asd_ha, CTXDOMAIN);
 d &= ~4;
 asd_write_reg_dword(asd_ha, CTXDOMAIN, d);

 asd_ha->hw_prof.max_ddbs = max_devs;

 return 0;
}
