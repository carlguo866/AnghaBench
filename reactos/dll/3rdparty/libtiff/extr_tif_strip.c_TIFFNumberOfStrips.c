
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_5__ {scalar_t__ td_rowsperstrip; scalar_t__ td_planarconfig; scalar_t__ td_samplesperpixel; int td_imagelength; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ PLANARCONFIG_SEPARATE ;
 int TIFFhowmany_32 (int ,scalar_t__) ;
 scalar_t__ _TIFFMultiply32 (TYPE_2__*,scalar_t__,scalar_t__,char*) ;

uint32
TIFFNumberOfStrips(TIFF* tif)
{
 TIFFDirectory *td = &tif->tif_dir;
 uint32 nstrips;

 nstrips = (td->td_rowsperstrip == (uint32) -1 ? 1 :
      TIFFhowmany_32(td->td_imagelength, td->td_rowsperstrip));
 if (td->td_planarconfig == PLANARCONFIG_SEPARATE)
  nstrips = _TIFFMultiply32(tif, nstrips, (uint32)td->td_samplesperpixel,
      "TIFFNumberOfStrips");
 return (nstrips);
}
