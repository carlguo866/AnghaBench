
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_i2c_desc {int Type; int Size; } ;
struct edgeport_serial {int dummy; } ;
typedef int __u8 ;


 int TI_MAX_I2C_SIZE ;
 int read_rom (struct edgeport_serial*,int,int,int *) ;

__attribute__((used)) static int get_descriptor_addr(struct edgeport_serial *serial,
    int desc_type, struct ti_i2c_desc *rom_desc)
{
 int start_address;
 int status;


 start_address = 2;
 do {
  status = read_rom(serial,
       start_address,
       sizeof(struct ti_i2c_desc),
       (__u8 *)rom_desc);
  if (status)
   return 0;

  if (rom_desc->Type == desc_type)
   return start_address;

  start_address = start_address + sizeof(struct ti_i2c_desc)
       + rom_desc->Size;

 } while ((start_address < TI_MAX_I2C_SIZE) && rom_desc->Type);

 return 0;
}
