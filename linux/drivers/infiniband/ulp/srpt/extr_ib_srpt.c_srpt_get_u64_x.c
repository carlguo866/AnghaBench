
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kernel_param {scalar_t__ arg; } ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int srpt_get_u64_x(char *buffer, const struct kernel_param *kp)
{
 return sprintf(buffer, "0x%016llx", *(u64 *)kp->arg);
}
