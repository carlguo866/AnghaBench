
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioc3 {int dummy; } ;


 int ioc3_r_mcr () ;

__attribute__((used)) static int nic_wait(struct ioc3 *ioc3)
{
 u32 mcr;

        do {
                mcr = ioc3_r_mcr();
        } while (!(mcr & 2));

        return mcr & 1;
}
