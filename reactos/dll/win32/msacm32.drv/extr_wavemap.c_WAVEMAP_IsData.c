
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__ const* self; } ;
typedef TYPE_1__ WAVEMAPDATA ;
typedef int BOOL ;


 int IsBadReadPtr (TYPE_1__ const*,int) ;

__attribute__((used)) static BOOL WAVEMAP_IsData(const WAVEMAPDATA* wm)
{
    return (!IsBadReadPtr(wm, sizeof(WAVEMAPDATA)) && wm->self == wm);
}
