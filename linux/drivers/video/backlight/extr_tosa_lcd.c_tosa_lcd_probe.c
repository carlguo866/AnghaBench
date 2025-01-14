
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {int is_vga; int * lcd; struct spi_device* spi; } ;
struct spi_device {int bits_per_word; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_LOW ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TOSA_GPIO_TG_ON ;
 int devm_gpio_request_one (int *,int ,int ,char*) ;
 struct tosa_lcd_data* devm_kzalloc (int *,int,int ) ;
 int * devm_lcd_device_register (int *,char*,int *,struct tosa_lcd_data*,int *) ;
 int mdelay (int) ;
 int spi_set_drvdata (struct spi_device*,struct tosa_lcd_data*) ;
 int spi_setup (struct spi_device*) ;
 int tosa_lcd_ops ;
 int tosa_lcd_tg_init (struct tosa_lcd_data*) ;
 int tosa_lcd_tg_off (struct tosa_lcd_data*) ;
 int tosa_lcd_tg_on (struct tosa_lcd_data*) ;

__attribute__((used)) static int tosa_lcd_probe(struct spi_device *spi)
{
 int ret;
 struct tosa_lcd_data *data;

 data = devm_kzalloc(&spi->dev, sizeof(struct tosa_lcd_data),
    GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->is_vga = 1;




 spi->bits_per_word = 8;

 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 data->spi = spi;
 spi_set_drvdata(spi, data);

 ret = devm_gpio_request_one(&spi->dev, TOSA_GPIO_TG_ON,
    GPIOF_OUT_INIT_LOW, "tg #pwr");
 if (ret < 0)
  return ret;

 mdelay(60);

 tosa_lcd_tg_init(data);

 tosa_lcd_tg_on(data);

 data->lcd = devm_lcd_device_register(&spi->dev, "tosa-lcd", &spi->dev,
     data, &tosa_lcd_ops);

 if (IS_ERR(data->lcd)) {
  ret = PTR_ERR(data->lcd);
  data->lcd = ((void*)0);
  goto err_register;
 }

 return 0;

err_register:
 tosa_lcd_tg_off(data);
 return ret;
}
