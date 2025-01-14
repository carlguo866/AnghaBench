
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct tvp5150 {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int vbi_type; } ;
struct i2c_vbi_ram_value {int reg; int* values; TYPE_1__ type; } ;


 int ARRAY_SIZE (struct i2c_vbi_ram_value*) ;
 unsigned int TVP5150_CONF_RAM_ADDR_HIGH ;
 unsigned int TVP5150_CONF_RAM_ADDR_LOW ;
 unsigned int TVP5150_FULL_FIELD_ENA ;
 unsigned int TVP5150_LINE_MODE_END ;
 unsigned int TVP5150_LINE_MODE_INI ;
 unsigned int TVP5150_VDP_CONF_RAM_DATA ;
 int regmap_write (struct regmap*,unsigned int,int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 struct i2c_vbi_ram_value* vbi_ram_default ;

__attribute__((used)) static int tvp5150_vdp_init(struct v4l2_subdev *sd)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 struct regmap *map = decoder->regmap;
 unsigned int i;
 int j;


 regmap_write(map, TVP5150_FULL_FIELD_ENA, 0);


 for (i = TVP5150_LINE_MODE_INI; i <= TVP5150_LINE_MODE_END; i++)
  regmap_write(map, i, 0xff);


 for (j = 0; j < ARRAY_SIZE(vbi_ram_default); j++) {
  const struct i2c_vbi_ram_value *regs = &vbi_ram_default[j];

  if (!regs->type.vbi_type)
   continue;

  regmap_write(map, TVP5150_CONF_RAM_ADDR_HIGH, regs->reg >> 8);
  regmap_write(map, TVP5150_CONF_RAM_ADDR_LOW, regs->reg);

  for (i = 0; i < 16; i++)
   regmap_write(map, TVP5150_VDP_CONF_RAM_DATA,
         regs->values[i]);
 }
 return 0;
}
