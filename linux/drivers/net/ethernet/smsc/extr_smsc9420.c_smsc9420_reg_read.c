
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct smsc9420_pdata {scalar_t__ ioaddr; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 smsc9420_reg_read(struct smsc9420_pdata *pd, u32 offset)
{
 return ioread32(pd->ioaddr + offset);
}
