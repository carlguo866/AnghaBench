
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_PHY {int led_fault; int index; int led_locate; int handle; } ;


 int scic_sgpio_update_led_state (int ,int,int,int ,int ) ;

__attribute__((used)) static void isci_led_fault_func(void *priv, int onoff)
{
 struct ISCI_PHY *phy = priv;


 phy->led_fault = onoff;
 scic_sgpio_update_led_state(phy->handle, 1 << phy->index,
  phy->led_fault, phy->led_locate, 0);
}
