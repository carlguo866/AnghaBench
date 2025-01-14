
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;



__attribute__((used)) static void srpt_set_ioc(u8 *c_list, u32 slot, u8 value)
{
 u16 id;
 u8 tmp;

 id = (slot - 1) / 2;
 if (slot & 0x1) {
  tmp = c_list[id] & 0xf;
  c_list[id] = (value << 4) | tmp;
 } else {
  tmp = c_list[id] & 0xf0;
  c_list[id] = (value & 0xf) | tmp;
 }
}
