
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_ant {int rssi_history; } ;
struct TYPE_2__ {struct link_ant ant; } ;
struct rt2x00_dev {TYPE_1__ link; } ;


 int DEFAULT_RSSI ;

__attribute__((used)) static int rt2x00link_antenna_get_rssi_history(struct rt2x00_dev *rt2x00dev)
{
 struct link_ant *ant = &rt2x00dev->link.ant;

 if (ant->rssi_history)
  return ant->rssi_history;
 return DEFAULT_RSSI;
}
