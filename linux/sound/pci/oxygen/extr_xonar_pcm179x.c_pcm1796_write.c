
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct xonar_pcm179x {size_t** pcm1796_regs; } ;
struct TYPE_2__ {int function_flags; } ;
struct oxygen {TYPE_1__ model; struct xonar_pcm179x* model_data; } ;


 unsigned int ARRAY_SIZE (size_t*) ;
 int OXYGEN_FUNCTION_2WIRE_SPI_MASK ;
 int OXYGEN_FUNCTION_SPI ;
 size_t PCM1796_REG_BASE ;
 int pcm1796_write_i2c (struct oxygen*,unsigned int,size_t,size_t) ;
 int pcm1796_write_spi (struct oxygen*,unsigned int,size_t,size_t) ;

__attribute__((used)) static void pcm1796_write(struct oxygen *chip, unsigned int codec,
     u8 reg, u8 value)
{
 struct xonar_pcm179x *data = chip->model_data;

 if ((chip->model.function_flags & OXYGEN_FUNCTION_2WIRE_SPI_MASK) ==
     OXYGEN_FUNCTION_SPI)
  pcm1796_write_spi(chip, codec, reg, value);
 else
  pcm1796_write_i2c(chip, codec, reg, value);
 if ((unsigned int)(reg - PCM1796_REG_BASE)
     < ARRAY_SIZE(data->pcm1796_regs[codec]))
  data->pcm1796_regs[codec][reg - PCM1796_REG_BASE] = value;
}
