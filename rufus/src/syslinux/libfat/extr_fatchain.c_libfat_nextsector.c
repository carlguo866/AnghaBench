
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct libfat_filesystem {scalar_t__ clustsize; scalar_t__ data; scalar_t__ rootdir; scalar_t__ clustshift; int endcluster; int fat_type; scalar_t__ fat; } ;
typedef scalar_t__ libfat_sector_t ;
typedef int le32_t ;
typedef int le16_t ;
typedef int int32_t ;





 scalar_t__ LIBFAT_SECTOR_MASK ;
 scalar_t__ LIBFAT_SECTOR_SHIFT ;
 scalar_t__ libfat_clustertosector (struct libfat_filesystem*,int) ;
 int* libfat_get_sector (struct libfat_filesystem*,scalar_t__) ;
 int read16 (int *) ;
 int read32 (int *) ;

libfat_sector_t libfat_nextsector(struct libfat_filesystem * fs,
      libfat_sector_t s)
{
    int32_t cluster, nextcluster;
    uint32_t fatoffset;
    libfat_sector_t fatsect;
    uint8_t *fsdata;
    uint32_t clustmask = fs->clustsize - 1;
    libfat_sector_t rs;

    if (s < fs->data) {
 if (s < fs->rootdir)
     return -1;


 s++;
 return (s < fs->data) ? s : 0;
    }

    rs = s - fs->data;

    if (~rs & clustmask)
 return s + 1;

    cluster = 2 + (rs >> fs->clustshift);

    if (cluster >= fs->endcluster)
 return -1;

    switch (fs->fat_type) {
    case 130:

 fatoffset = cluster + (cluster >> 1);
 fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
 fsdata = libfat_get_sector(fs, fatsect);
 if (!fsdata)
     return -1;
 nextcluster = fsdata[fatoffset & LIBFAT_SECTOR_MASK];


 fatoffset++;
 fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
 fsdata = libfat_get_sector(fs, fatsect);
 if (!fsdata)
     return -1;
 nextcluster |= fsdata[fatoffset & LIBFAT_SECTOR_MASK] << 8;


 if (cluster & 1)
     nextcluster >>= 4;
 else
     nextcluster &= 0x0FFF;

 if (nextcluster >= 0x0FF8)
     return 0;
 break;

    case 129:
 fatoffset = cluster << 1;
 fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
 fsdata = libfat_get_sector(fs, fatsect);
 if (!fsdata)
     return -1;
 nextcluster =
     read16((le16_t *) & fsdata[fatoffset & LIBFAT_SECTOR_MASK]);

 if (nextcluster >= 0x0FFF8)
     return 0;
 break;

    case 128:
 fatoffset = cluster << 2;
 fatsect = fs->fat + (fatoffset >> LIBFAT_SECTOR_SHIFT);
 fsdata = libfat_get_sector(fs, fatsect);
 if (!fsdata)
     return -1;
 nextcluster =
     read32((le32_t *) & fsdata[fatoffset & LIBFAT_SECTOR_MASK]);
 nextcluster &= 0x0FFFFFFF;

 if (nextcluster >= 0x0FFFFFF8)
     return 0;
 break;

    default:
 return -1;
    }

    return libfat_clustertosector(fs, nextcluster);
}
