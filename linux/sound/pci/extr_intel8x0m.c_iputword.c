
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct intel8x0m {scalar_t__ bmaddr; } ;


 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static inline void iputword(struct intel8x0m *chip, u32 offset, u16 val)
{
 iowrite16(val, chip->bmaddr + offset);
}
