
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct aureon_spec* spec; } ;
struct aureon_spec {unsigned short* stac9744; } ;


 int AC97_MASTER ;
 unsigned int AUREON_AC97_DATA_MASK ;
 unsigned int AUREON_AC97_RESET ;
 int aureon_ac97_write (struct snd_ice1712*,int ,int) ;
 int memset (unsigned short**,int ,int) ;
 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int aureon_ac97_init(struct snd_ice1712 *ice)
{
 struct aureon_spec *spec = ice->spec;
 int i;
 static const unsigned short ac97_defaults[] = {
  0x00, 0x9640,
  0x02, 0x8000,
  0x04, 0x8000,
  0x06, 0x8000,
  0x0C, 0x8008,
  0x0E, 0x8008,
  0x10, 0x8808,
  0x12, 0x8808,
  0x14, 0x8808,
  0x16, 0x8808,
  0x18, 0x8808,
  0x1C, 0x8000,
  0x26, 0x000F,
  0x28, 0x0201,
  0x2C, 0xBB80,
  0x32, 0xBB80,
  0x7C, 0x8384,
  0x7E, 0x7644,
  (unsigned short)-1
 };
 unsigned int tmp;


 tmp = (snd_ice1712_gpio_read(ice) | AUREON_AC97_RESET) & ~AUREON_AC97_DATA_MASK;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(3);

 tmp &= ~AUREON_AC97_RESET;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(3);

 tmp |= AUREON_AC97_RESET;
 snd_ice1712_gpio_write(ice, tmp);
 udelay(3);

 memset(&spec->stac9744, 0, sizeof(spec->stac9744));
 for (i = 0; ac97_defaults[i] != (unsigned short)-1; i += 2)
  spec->stac9744[(ac97_defaults[i]) >> 1] = ac97_defaults[i+1];


 aureon_ac97_write(ice, AC97_MASTER, 0x0000);

 return 0;
}
