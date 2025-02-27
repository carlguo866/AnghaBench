
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_disable_unused_dac_adc (struct rt2x00_dev*) ;

__attribute__((used)) static void rt2800_init_bbp_3572(struct rt2x00_dev *rt2x00dev)
{
 rt2800_bbp_write(rt2x00dev, 31, 0x08);

 rt2800_bbp_write(rt2x00dev, 65, 0x2c);
 rt2800_bbp_write(rt2x00dev, 66, 0x38);

 rt2800_bbp_write(rt2x00dev, 69, 0x12);
 rt2800_bbp_write(rt2x00dev, 73, 0x10);

 rt2800_bbp_write(rt2x00dev, 70, 0x0a);

 rt2800_bbp_write(rt2x00dev, 79, 0x13);
 rt2800_bbp_write(rt2x00dev, 80, 0x05);
 rt2800_bbp_write(rt2x00dev, 81, 0x33);

 rt2800_bbp_write(rt2x00dev, 82, 0x62);

 rt2800_bbp_write(rt2x00dev, 83, 0x6a);

 rt2800_bbp_write(rt2x00dev, 84, 0x99);

 rt2800_bbp_write(rt2x00dev, 86, 0x00);

 rt2800_bbp_write(rt2x00dev, 91, 0x04);

 rt2800_bbp_write(rt2x00dev, 92, 0x00);

 rt2800_bbp_write(rt2x00dev, 103, 0xc0);

 rt2800_bbp_write(rt2x00dev, 105, 0x05);

 rt2800_bbp_write(rt2x00dev, 106, 0x35);

 rt2800_disable_unused_dac_adc(rt2x00dev);
}
