
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {scalar_t__ mgmt_queue_head; scalar_t__ mgmt_queue_tail; } ;



void init_mgmt_queue(struct ieee80211_device *ieee)
{
 ieee->mgmt_queue_tail = ieee->mgmt_queue_head = 0;
}
