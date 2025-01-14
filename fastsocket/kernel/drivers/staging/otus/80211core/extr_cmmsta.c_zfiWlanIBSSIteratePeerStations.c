
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* zfpIBSSIteratePeerStationCb ) (int *,TYPE_2__*,void*,int ) ;
typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_5__ {scalar_t__ oppositeCount; TYPE_2__* oppositeInfo; } ;
struct TYPE_7__ {TYPE_1__ sta; } ;
struct TYPE_6__ {scalar_t__ valid; } ;


 scalar_t__ ZM_MAX_OPPOSITE_COUNT ;
 TYPE_4__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u8_t zfiWlanIBSSIteratePeerStations(zdev_t* dev, u8_t numToIterate, zfpIBSSIteratePeerStationCb callback, void *ctx)
{
    u8_t oppositeCount;
    u8_t i;
    u8_t index = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    oppositeCount = wd->sta.oppositeCount;
    if ( oppositeCount > numToIterate )
    {
        oppositeCount = numToIterate;
    }

    for(i=0; i < ZM_MAX_OPPOSITE_COUNT; i++)
    {
        if ( oppositeCount == 0 )
        {
            break;
        }

        if ( wd->sta.oppositeInfo[i].valid == 0 )
        {
            continue;
        }

        callback(dev, &wd->sta.oppositeInfo[i], ctx, index++);
        oppositeCount--;

    }

    zmw_leave_critical_section(dev);

    return index;
}
