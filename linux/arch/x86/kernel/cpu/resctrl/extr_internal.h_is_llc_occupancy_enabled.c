
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QOS_L3_OCCUP_EVENT_ID ;
 int rdt_mon_features ;

__attribute__((used)) static inline bool is_llc_occupancy_enabled(void)
{
 return (rdt_mon_features & (1 << QOS_L3_OCCUP_EVENT_ID));
}
