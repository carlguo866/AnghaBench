
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int crc8 (int) ;

__attribute__((used)) static u8 i2c_smbus_pec(u8 crc, u8 *p, size_t count)
{
 int i;

 for (i = 0; i < count; i++)
  crc = crc8((crc ^ p[i]) << 8);
 return crc;
}
