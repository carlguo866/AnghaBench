
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 scalar_t__ REG_MCUFWDL ;
 int _BlockWrite (struct adapter*,void*,int) ;
 int rtw_read8 (struct adapter*,scalar_t__) ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static int _PageWrite(
 struct adapter *padapter,
 u32 page,
 void *buffer,
 u32 size
)
{
 u8 value8;
 u8 u8Page = (u8) (page & 0x07);

 value8 = (rtw_read8(padapter, REG_MCUFWDL+2) & 0xF8) | u8Page;
 rtw_write8(padapter, REG_MCUFWDL+2, value8);

 return _BlockWrite(padapter, buffer, size);
}
