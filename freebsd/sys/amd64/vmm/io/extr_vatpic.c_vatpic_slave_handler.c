
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vm {int dummy; } ;
struct vatpic {struct atpic* atpic; } ;
struct atpic {int dummy; } ;


 int vatpic_read (struct vatpic*,struct atpic*,int,int,int,int *) ;
 int vatpic_write (struct vatpic*,struct atpic*,int,int,int,int *) ;
 struct vatpic* vm_atpic (struct vm*) ;

int
vatpic_slave_handler(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *eax)
{
 struct vatpic *vatpic;
 struct atpic *atpic;

 vatpic = vm_atpic(vm);
 atpic = &vatpic->atpic[1];

 if (bytes != 1)
  return (-1);

 if (in) {
  return (vatpic_read(vatpic, atpic, in, port, bytes, eax));
 }

 return (vatpic_write(vatpic, atpic, in, port, bytes, eax));
}
