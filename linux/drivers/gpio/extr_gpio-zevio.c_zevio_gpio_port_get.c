
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int regs; } ;
struct zevio_gpio {TYPE_1__ chip; } ;


 int IOMEM (unsigned int) ;
 unsigned int ZEVIO_GPIO_SECTION_SIZE ;
 int readl (int ) ;

__attribute__((used)) static inline u32 zevio_gpio_port_get(struct zevio_gpio *c, unsigned pin,
     unsigned port_offset)
{
 unsigned section_offset = ((pin >> 3) & 3)*ZEVIO_GPIO_SECTION_SIZE;
 return readl(IOMEM(c->chip.regs + section_offset + port_offset));
}
