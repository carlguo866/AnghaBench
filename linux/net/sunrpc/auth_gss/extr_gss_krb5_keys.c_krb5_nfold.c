
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int inbits ;


 unsigned long lcm (int,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void krb5_nfold(u32 inbits, const u8 *in,
         u32 outbits, u8 *out)
{
 unsigned long ulcm;
 int byte, i, msbit;




 inbits >>= 3;
 outbits >>= 3;


 ulcm = lcm(inbits, outbits);



 memset(out, 0, outbits);
 byte = 0;



 for (i = ulcm-1; i >= 0; i--) {

  msbit = (


    ((inbits << 3) - 1)


    + (((inbits << 3) + 13) * (i/inbits))


    + ((inbits - (i % inbits)) << 3)
    ) % (inbits << 3);


  byte += (((in[((inbits - 1) - (msbit >> 3)) % inbits] << 8)|
      (in[((inbits) - (msbit >> 3)) % inbits]))
     >> ((msbit & 7) + 1)) & 0xff;


  byte += out[i % outbits];
  out[i % outbits] = byte & 0xff;


  byte >>= 8;

 }


 if (byte) {
  for (i = outbits - 1; i >= 0; i--) {

   byte += out[i];
   out[i] = byte & 0xff;


   byte >>= 8;
  }
 }
}
