
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL pathdrv_PolyPolygon( PHYSDEV dev, const POINT* pts, const INT* counts, UINT polygons )
{


    DPRINT("pathdrv_PolyPolygon dev %p\n",dev);
    return TRUE;
}
