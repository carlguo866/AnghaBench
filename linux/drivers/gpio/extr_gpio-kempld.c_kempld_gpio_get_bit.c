
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kempld_device_data {int dummy; } ;


 int KEMPLD_GPIO_MASK (int) ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_read8 (struct kempld_device_data*,int) ;
 int kempld_release_mutex (struct kempld_device_data*) ;

__attribute__((used)) static int kempld_gpio_get_bit(struct kempld_device_data *pld, u8 reg, u8 bit)
{
 u8 status;

 kempld_get_mutex(pld);
 status = kempld_read8(pld, reg);
 kempld_release_mutex(pld);

 return !!(status & KEMPLD_GPIO_MASK(bit));
}
