
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int prot; } ;
struct TYPE_4__ {TYPE_1__ cartridge; } ;


 TYPE_2__ scd ;

__attribute__((used)) static unsigned int cart_prot_read_byte(unsigned int address)
{

  if (address & 1)
  {
    return scd.cartridge.prot;
  }

  return 0xff;
}
