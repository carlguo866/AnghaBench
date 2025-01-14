
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audit_classify_compat_syscall (int,unsigned int) ;
 scalar_t__ audit_is_compat (int) ;

int audit_classify_syscall(int abi, unsigned syscall)
{
 if (audit_is_compat(abi))
  return audit_classify_compat_syscall(abi, syscall);

 switch(syscall) {

 case 130:
  return 2;


 case 129:
  return 3;


 case 128:
  return 4;


 case 131:

 case 132:
  return 5;
 default:
  return 0;
 }
}
