
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rx_success; } ;
struct TYPE_6__ {int avg; } ;
struct link_ant {TYPE_3__ rssi_ant; } ;
struct TYPE_5__ {TYPE_1__ qual; struct link_ant ant; } ;
struct rt2x00_dev {TYPE_2__ link; } ;


 int DEFAULT_RSSI ;

__attribute__((used)) static int rt2x00link_antenna_get_link_rssi(struct rt2x00_dev *rt2x00dev)
{
 struct link_ant *ant = &rt2x00dev->link.ant;

 if (ant->rssi_ant.avg && rt2x00dev->link.qual.rx_success)
  return ant->rssi_ant.avg;
 return DEFAULT_RSSI;
}
