
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_bmc {int dummy; } ;


 int BT_CTRL ;
 int BT_CTRL_H2B_ATN ;
 int bt_outb (struct bt_bmc*,int ,int ) ;

__attribute__((used)) static void clr_h2b_atn(struct bt_bmc *bt_bmc)
{
 bt_outb(bt_bmc, BT_CTRL_H2B_ATN, BT_CTRL);
}
