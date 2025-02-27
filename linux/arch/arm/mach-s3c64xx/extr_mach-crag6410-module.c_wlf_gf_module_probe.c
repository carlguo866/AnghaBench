
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct TYPE_3__ {int id; int rev; int num_i2c_devs; int * gpiod_table; int num_spi_devs; int spi_devs; int * i2c_devs; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int) ;
 int dev_warn (int *,char*,int,int) ;
 TYPE_1__* gf_mods ;
 int gpiod_add_lookup_table (int *) ;
 int i2c_new_device (int ,int *) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int spi_register_board_info (int ,int ) ;
 int wm5102_gpiod_table ;
 int wm5102_reva_gpiod_table ;
 int wm8994_gpiod_table ;

__attribute__((used)) static int wlf_gf_module_probe(struct i2c_client *i2c,
          const struct i2c_device_id *i2c_id)
{
 int ret, i, j, id, rev;

 ret = i2c_smbus_read_byte_data(i2c, 0);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to read ID: %d\n", ret);
  return ret;
 }

 id = (ret & 0xfe) >> 2;
 rev = ret & 0x3;
 for (i = 0; i < ARRAY_SIZE(gf_mods); i++)
  if (id == gf_mods[i].id && (gf_mods[i].rev == 0xff ||
         rev == gf_mods[i].rev))
   break;

 gpiod_add_lookup_table(&wm5102_reva_gpiod_table);
 gpiod_add_lookup_table(&wm5102_gpiod_table);
 gpiod_add_lookup_table(&wm8994_gpiod_table);

 if (i < ARRAY_SIZE(gf_mods)) {
  dev_info(&i2c->dev, "%s revision %d\n",
    gf_mods[i].name, rev + 1);

  for (j = 0; j < gf_mods[i].num_i2c_devs; j++) {
   if (!i2c_new_device(i2c->adapter,
         &(gf_mods[i].i2c_devs[j])))
    dev_err(&i2c->dev,
     "Failed to register dev: %d\n", ret);
  }

  spi_register_board_info(gf_mods[i].spi_devs,
     gf_mods[i].num_spi_devs);

  if (gf_mods[i].gpiod_table)
   gpiod_add_lookup_table(gf_mods[i].gpiod_table);
 } else {
  dev_warn(&i2c->dev, "Unknown module ID 0x%x revision %d\n",
    id, rev + 1);
 }

 return 0;
}
