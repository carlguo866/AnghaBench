
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct madera {unsigned long type; char const* type_name; int irq; int * dev; void* regmap_32bit; void* regmap; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct i2c_client {int irq; int dev; } ;


 int CONFIG_MFD_CS47L15 ;
 int CONFIG_MFD_CS47L35 ;
 int CONFIG_MFD_CS47L85 ;
 int CONFIG_MFD_CS47L90 ;
 int CONFIG_MFD_CS47L92 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;

 struct regmap_config cs47l15_16bit_i2c_regmap ;
 struct regmap_config cs47l15_32bit_i2c_regmap ;
 struct regmap_config cs47l35_16bit_i2c_regmap ;
 struct regmap_config cs47l35_32bit_i2c_regmap ;
 struct regmap_config cs47l85_16bit_i2c_regmap ;
 struct regmap_config cs47l85_32bit_i2c_regmap ;
 struct regmap_config cs47l90_16bit_i2c_regmap ;
 struct regmap_config cs47l90_32bit_i2c_regmap ;
 struct regmap_config cs47l92_16bit_i2c_regmap ;
 struct regmap_config cs47l92_32bit_i2c_regmap ;
 int dev_err (int *,char*,...) ;
 struct madera* devm_kzalloc (int *,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int madera_dev_init (struct madera*) ;
 char* madera_name_from_type (unsigned long) ;
 void* of_device_get_match_data (int *) ;

__attribute__((used)) static int madera_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct madera *madera;
 const struct regmap_config *regmap_16bit_config = ((void*)0);
 const struct regmap_config *regmap_32bit_config = ((void*)0);
 const void *of_data;
 unsigned long type;
 const char *name;
 int ret;

 of_data = of_device_get_match_data(&i2c->dev);
 if (of_data)
  type = (unsigned long)of_data;
 else
  type = id->driver_data;

 switch (type) {
 case 135:
  if (IS_ENABLED(CONFIG_MFD_CS47L15)) {
   regmap_16bit_config = &cs47l15_16bit_i2c_regmap;
   regmap_32bit_config = &cs47l15_32bit_i2c_regmap;
  }
  break;
 case 134:
  if (IS_ENABLED(CONFIG_MFD_CS47L35)) {
   regmap_16bit_config = &cs47l35_16bit_i2c_regmap;
   regmap_32bit_config = &cs47l35_32bit_i2c_regmap;
  }
  break;
 case 133:
 case 128:
  if (IS_ENABLED(CONFIG_MFD_CS47L85)) {
   regmap_16bit_config = &cs47l85_16bit_i2c_regmap;
   regmap_32bit_config = &cs47l85_32bit_i2c_regmap;
  }
  break;
 case 132:
 case 131:
  if (IS_ENABLED(CONFIG_MFD_CS47L90)) {
   regmap_16bit_config = &cs47l90_16bit_i2c_regmap;
   regmap_32bit_config = &cs47l90_32bit_i2c_regmap;
  }
  break;
 case 136:
 case 130:
 case 129:
  if (IS_ENABLED(CONFIG_MFD_CS47L92)) {
   regmap_16bit_config = &cs47l92_16bit_i2c_regmap;
   regmap_32bit_config = &cs47l92_32bit_i2c_regmap;
  }
  break;
 default:
  dev_err(&i2c->dev,
   "Unknown Madera I2C device type %ld\n", type);
  return -EINVAL;
 }

 name = madera_name_from_type(type);

 if (!regmap_16bit_config) {

  dev_err(&i2c->dev,
   "Kernel does not include support for %s\n", name);
  return -EINVAL;
 }

 madera = devm_kzalloc(&i2c->dev, sizeof(*madera), GFP_KERNEL);
 if (!madera)
  return -ENOMEM;


 madera->regmap = devm_regmap_init_i2c(i2c, regmap_16bit_config);
 if (IS_ERR(madera->regmap)) {
  ret = PTR_ERR(madera->regmap);
  dev_err(&i2c->dev,
   "Failed to allocate 16-bit register map: %d\n", ret);
  return ret;
 }

 madera->regmap_32bit = devm_regmap_init_i2c(i2c, regmap_32bit_config);
 if (IS_ERR(madera->regmap_32bit)) {
  ret = PTR_ERR(madera->regmap_32bit);
  dev_err(&i2c->dev,
   "Failed to allocate 32-bit register map: %d\n", ret);
  return ret;
 }

 madera->type = type;
 madera->type_name = name;
 madera->dev = &i2c->dev;
 madera->irq = i2c->irq;

 return madera_dev_init(madera);
}
