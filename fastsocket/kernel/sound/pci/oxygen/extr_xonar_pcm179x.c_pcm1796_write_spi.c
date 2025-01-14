
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int const OXYGEN_SPI_CEN_LATCH_CLOCK_HI ;
 int const OXYGEN_SPI_CLOCK_160 ;
 int const OXYGEN_SPI_CODEC_SHIFT ;
 int const OXYGEN_SPI_DATA_LENGTH_2 ;
 int const OXYGEN_SPI_TRIGGER ;
 int oxygen_write_spi (struct oxygen*,int const,int) ;

__attribute__((used)) static inline void pcm1796_write_spi(struct oxygen *chip, unsigned int codec,
         u8 reg, u8 value)
{

 static const u8 codec_map[4] = {
  0, 1, 2, 4
 };
 oxygen_write_spi(chip, OXYGEN_SPI_TRIGGER |
    OXYGEN_SPI_DATA_LENGTH_2 |
    OXYGEN_SPI_CLOCK_160 |
    (codec_map[codec] << OXYGEN_SPI_CODEC_SHIFT) |
    OXYGEN_SPI_CEN_LATCH_CLOCK_HI,
    (reg << 8) | value);
}
