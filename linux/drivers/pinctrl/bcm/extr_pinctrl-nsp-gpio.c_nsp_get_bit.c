
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {scalar_t__ base; scalar_t__ io_ctrl; } ;
typedef enum base_type { ____Placeholder_base_type } base_type ;


 int BIT (unsigned int) ;
 int IO_CTRL ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline bool nsp_get_bit(struct nsp_gpio *chip, enum base_type address,
          unsigned int reg, unsigned gpio)
{
 if (address == IO_CTRL)
  return !!(readl(chip->io_ctrl + reg) & BIT(gpio));
 else
  return !!(readl(chip->base + reg) & BIT(gpio));
}
