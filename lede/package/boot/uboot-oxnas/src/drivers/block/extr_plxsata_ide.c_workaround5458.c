
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short FR_GAIN ;
 unsigned short FR_GAIN_MASK ;
 unsigned short FR_GAIN_OFFSET ;
 unsigned short PH_GAIN ;
 unsigned short PH_GAIN_MASK ;
 unsigned short PH_GAIN_OFFSET ;
 unsigned short USE_INT_SETTING ;
 unsigned short read_cr (int) ;
 int write_cr (unsigned short,int) ;

void workaround5458(void)
{
 unsigned i;

 for (i = 0; i < 2; i++) {
  unsigned short rx_control = read_cr(0x201d + (i << 8));
  rx_control &= ~(PH_GAIN_MASK | FR_GAIN_MASK);
  rx_control |= PH_GAIN << PH_GAIN_OFFSET;
  rx_control |= FR_GAIN << FR_GAIN_OFFSET;
  rx_control |= USE_INT_SETTING;
  write_cr(rx_control, 0x201d + (i << 8));
 }
}
