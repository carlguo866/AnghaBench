
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct dma_info {int dummy; } ;


 scalar_t__ txd (struct dma_info*,scalar_t__) ;

__attribute__((used)) static uint nexttxd(struct dma_info *di, uint i)
{
 return txd(di, i + 1);
}
