
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t handles_size; scalar_t__* handles; } ;
typedef scalar_t__ PHYSDEV ;
typedef TYPE_1__ METAFILEDRV_PDEVICE ;
typedef size_t INT16 ;
typedef scalar_t__ HGDIOBJ ;



__attribute__((used)) static INT16 MFDRV_FindObject( PHYSDEV dev, HGDIOBJ obj )
{
    METAFILEDRV_PDEVICE *physDev = (METAFILEDRV_PDEVICE *)dev;
    INT16 index;

    for(index = 0; index < physDev->handles_size; index++)
        if(physDev->handles[index] == obj) break;

    if(index == physDev->handles_size) return -1;

    return index ;
}
