
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tif_fd; } ;
typedef TYPE_1__ TIFF ;



int
TIFFFileno(TIFF* tif)
{
 return (tif->tif_fd);
}
