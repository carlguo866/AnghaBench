
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_enet_pdata {scalar_t__ eth_csr_addr; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void xgene_enet_wr_csr(struct xgene_enet_pdata *p, u32 offset, u32 val)
{
 iowrite32(val, p->eth_csr_addr + offset);
}
