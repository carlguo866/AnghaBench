
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_arch_check_processor_compat () ;

__attribute__((used)) static void check_processor_compat(void *rtn)
{
 *(int *)rtn = kvm_arch_check_processor_compat();
}
