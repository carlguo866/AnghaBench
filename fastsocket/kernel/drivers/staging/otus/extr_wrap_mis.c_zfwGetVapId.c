
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 int zfLnxGetVapId (int *) ;

u16_t zfwGetVapId(zdev_t* dev)
{
    return zfLnxGetVapId(dev);
}
