
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char UInt32 ;



__attribute__((used)) static int _unmarshal_uint32(unsigned char **pData,
                             unsigned int *pLenRemain,
                             UInt32 *dest)
{
    if (4 > *pLenRemain)
        return 0;
    *dest = (*pData)[0] | (*pData)[1]<<8 | (*pData)[2]<<16 | (*pData)[3]<<24;
    *pData += 4;
    *pLenRemain -= 4;
    return 1;
}
