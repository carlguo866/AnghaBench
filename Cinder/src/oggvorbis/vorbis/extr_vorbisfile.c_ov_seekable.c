
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long seekable; } ;
typedef TYPE_1__ OggVorbis_File ;



long ov_seekable(OggVorbis_File *vf){
  return vf->seekable;
}
