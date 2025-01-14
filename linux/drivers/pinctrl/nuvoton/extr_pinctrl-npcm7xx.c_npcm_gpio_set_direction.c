
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {struct npcm7xx_gpio* gpio_bank; } ;
struct TYPE_2__ {unsigned int ngpio; int parent; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_1__ gc; } ;


 int BIT (unsigned int) ;
 unsigned int NPCM7XX_GPIO_PER_BANK ;
 scalar_t__ NPCM7XX_GP_N_OEC ;
 scalar_t__ NPCM7XX_GP_N_OES ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int iowrite32 (int,scalar_t__) ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int npcm_gpio_set_direction(struct pinctrl_dev *pctldev,
       struct pinctrl_gpio_range *range,
       unsigned int offset, bool input)
{
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);
 struct npcm7xx_gpio *bank =
  &npcm->gpio_bank[offset / NPCM7XX_GPIO_PER_BANK];
 int gpio = BIT(offset % bank->gc.ngpio);

 dev_dbg(bank->gc.parent, "GPIO Set Direction: %d = %d\n", offset,
  input);
 if (input)
  iowrite32(gpio, bank->base + NPCM7XX_GP_N_OEC);
 else
  iowrite32(gpio, bank->base + NPCM7XX_GP_N_OES);

 return 0;
}
