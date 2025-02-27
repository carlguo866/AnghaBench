
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int ) ;
 scalar_t__ HWREG (scalar_t__) ;
 scalar_t__ I2C_O_MMIS ;
 scalar_t__ I2C_O_MRIS ;
 int _I2CBaseValid (scalar_t__) ;

uint32_t
I2CMasterIntStatusEx(uint32_t ui32Base, bool bMasked)
{



    ASSERT(_I2CBaseValid(ui32Base));





    if(bMasked)
    {
        return(HWREG(ui32Base + I2C_O_MMIS));
    }
    else
    {
        return(HWREG(ui32Base + I2C_O_MRIS));
    }
}
