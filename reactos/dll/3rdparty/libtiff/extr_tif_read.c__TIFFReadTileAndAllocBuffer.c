
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int tmsize_t ;
typedef int TIFF ;


 int TIFFCheckRead (int *,int) ;
 int TIFFCheckTile (int *,int ,int ,int ,int ) ;
 int TIFFComputeTile (int *,int ,int ,int ,int ) ;
 int _TIFFReadEncodedTileAndAllocBuffer (int *,int ,void**,int ,int ) ;

tmsize_t
_TIFFReadTileAndAllocBuffer(TIFF* tif,
                            void **buf, tmsize_t bufsizetoalloc,
                            uint32 x, uint32 y, uint32 z, uint16 s)
{
    if (!TIFFCheckRead(tif, 1) || !TIFFCheckTile(tif, x, y, z, s))
            return ((tmsize_t)(-1));
    return (_TIFFReadEncodedTileAndAllocBuffer(tif,
                                               TIFFComputeTile(tif, x, y, z, s),
                                               buf, bufsizetoalloc,
                                               (tmsize_t)(-1)));
}
