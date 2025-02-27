
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;


 int al_serdes_25g_reg_read (struct al_serdes_grp_obj*,int,int ,int ,int*) ;
 int al_serdes_25g_reg_write (struct al_serdes_grp_obj*,int,int ,int ,int) ;

__attribute__((used)) static int al_serdes_25g_reg_masked_write(
 struct al_serdes_grp_obj *obj,
 enum al_serdes_reg_page page,
 uint16_t offset,
 uint8_t mask,
 uint8_t shift,
 uint8_t data)
{
 uint8_t val;
 int status = 0;

 status = al_serdes_25g_reg_read(obj, page, 0, offset, &val);
 if (status)
  return status;

 val &= (~mask);
 val |= (data << shift);
 return al_serdes_25g_reg_write(obj, page, 0, offset, val);
}
