
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep_range (int,int) ;

__attribute__((used)) static void hw_wait_phy_stable(void)
{






 usleep_range(2000, 2500);
}
