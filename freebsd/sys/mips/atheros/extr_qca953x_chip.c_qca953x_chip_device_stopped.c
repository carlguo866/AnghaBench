
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ATH_READ_REG (int ) ;
 int QCA953X_RESET_REG_RESET_MODULE ;

__attribute__((used)) static int
qca953x_chip_device_stopped(uint32_t mask)
{
 uint32_t reg;

 reg = ATH_READ_REG(QCA953X_RESET_REG_RESET_MODULE);
 return ((reg & mask) == mask);
}
