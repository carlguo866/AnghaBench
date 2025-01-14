
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsBssInfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ bssInfoFreeCount; size_t bssInfoArrayHead; struct zsBssInfo** bssInfoArray; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_MAX_BSS ;
 TYPE_2__* wd ;
 int zfZeroMemory (int *,int) ;
 int zmw_get_wlan_dev (int *) ;

struct zsBssInfo* zfBssInfoAllocate(zdev_t* dev)
{
    struct zsBssInfo* pBssInfo;

    zmw_get_wlan_dev(dev);

    if (wd->sta.bssInfoFreeCount == 0)
        return ((void*)0);

    pBssInfo = wd->sta.bssInfoArray[wd->sta.bssInfoArrayHead];
    wd->sta.bssInfoArray[wd->sta.bssInfoArrayHead] = ((void*)0);
    wd->sta.bssInfoArrayHead = (wd->sta.bssInfoArrayHead + 1) & (ZM_MAX_BSS - 1);
    wd->sta.bssInfoFreeCount--;

    zfZeroMemory((u8_t*)pBssInfo, sizeof(struct zsBssInfo));

    return pBssInfo;
}
