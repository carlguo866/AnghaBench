
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int tipc_own_addr ;
 int tipc_zone (int ) ;

__attribute__((used)) static inline u32 own_zone(void)
{
 return tipc_zone(tipc_own_addr);
}
