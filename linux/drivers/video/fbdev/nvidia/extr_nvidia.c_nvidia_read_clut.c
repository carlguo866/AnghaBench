
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int dummy; } ;


 int NVReadDacData (struct nvidia_par*) ;
 int NVWriteDacMask (struct nvidia_par*,int) ;
 int NVWriteDacReadAddr (struct nvidia_par*,int ) ;

__attribute__((used)) static void nvidia_read_clut(struct nvidia_par *par,
        u8 regnum, u8 * red, u8 * green, u8 * blue)
{
 NVWriteDacMask(par, 0xff);
 NVWriteDacReadAddr(par, regnum);
 *red = NVReadDacData(par);
 *green = NVReadDacData(par);
 *blue = NVReadDacData(par);
}
