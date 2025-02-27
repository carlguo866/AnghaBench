
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exp (int ) ;
 int gamma_was_changed ;
 int* memregs ;
 double pow (double,float) ;
 int powf (float,float) ;

__attribute__((used)) static void set_lcd_gamma_(int g100, int A_SNs_curve)
{
 float gamma = (float) g100 / 100.0f;
 int i;
 gamma = 1 / gamma;

 if (g100 == 100)
  A_SNs_curve = 0;


 memregs[0x2880>>1] &= ~(1<<12);

 memregs[0x295C>>1] = 0;
 for (i = 0; i < 256; i++)
 {
  unsigned char g;
  unsigned short s;
  const unsigned short grey50=143, grey75=177, grey25=97;
  double blah;

  if (A_SNs_curve)
  {

   blah = (( -128 * exp(-powf((float) i/64.0f + 2.0f , 2.0f))) +
    ( -64 * exp(-powf((float) i/64.0f + 1.0f , 2.0f))) +
    (grey25 * exp(-powf((float) i/64.0f - 1.0f , 2.0f))) +
    (grey50 * exp(-powf((float) i/64.0f - 2.0f , 2.0f))) +
    (grey75 * exp(-powf((float) i/64.0f - 3.0f , 2.0f))) +
    ( 256 * exp(-powf((float) i/64.0f - 4.0f , 2.0f))) +
    ( 320 * exp(-powf((float) i/64.0f - 5.0f , 2.0f))) +
    ( 384 * exp(-powf((float) i/64.0f - 6.0f , 2.0f)))) / 1.772637;
   blah += 0.5;
  }
  else
  {
   blah = (double)i;
  }

  g = (unsigned char)(255.0 * pow(blah/255.0, gamma));

  s = (g<<8) | g;
  memregs[0x295E>>1]= s;
  memregs[0x295E>>1]= g;
 }

 gamma_was_changed = 1;
}
