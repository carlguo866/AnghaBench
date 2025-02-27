
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int clk_delay; int cmd_read; int cmd_write; int gpio_sck; int gpio_sda; } ;
struct rtl8366_platform_data {int gpio_sck; int gpio_sda; } ;
typedef int smi ;
typedef enum rtl8366_type { ____Placeholder_rtl8366_type } rtl8366_type ;


 int RTL8366_TYPE_RB ;
 int RTL8366_TYPE_S ;
 int RTL8366_TYPE_UNKNOWN ;
 int __rtl8366_smi_cleanup (struct rtl8366_smi*) ;
 scalar_t__ __rtl8366_smi_init (struct rtl8366_smi*,char*) ;
 int memset (struct rtl8366_smi*,int ,int) ;
 int printk (char*,...) ;
 scalar_t__ rtl8366_smi_read_reg (struct rtl8366_smi*,int,int*) ;

enum rtl8366_type rtl8366_smi_detect(struct rtl8366_platform_data *pdata)
{
 static struct rtl8366_smi smi;
 enum rtl8366_type type = RTL8366_TYPE_UNKNOWN;
 u32 reg = 0;

 memset(&smi, 0, sizeof(smi));
 smi.gpio_sda = pdata->gpio_sda;
 smi.gpio_sck = pdata->gpio_sck;
 smi.clk_delay = 10;
 smi.cmd_read = 0xa9;
 smi.cmd_write = 0xa8;

 if (__rtl8366_smi_init(&smi, "rtl8366"))
  goto out;

 if (rtl8366_smi_read_reg(&smi, 0x5c, &reg))
  goto cleanup;

 switch(reg) {
 case 0x6027:
  printk("Found an RTL8366S switch\n");
  type = RTL8366_TYPE_S;
  break;
 case 0x5937:
  printk("Found an RTL8366RB switch\n");
  type = RTL8366_TYPE_RB;
  break;
 default:
  printk("Found an Unknown RTL8366 switch (id=0x%04x)\n", reg);
  break;
 }

cleanup:
 __rtl8366_smi_cleanup(&smi);
out:
 return type;
}
