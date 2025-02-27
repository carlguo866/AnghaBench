
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int version; int channels; int rate; int bitrate_upper; int bitrate_nominal; int bitrate_lower; TYPE_2__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
typedef int oggpack_buffer ;
struct TYPE_6__ {int* blocksizes; } ;
typedef TYPE_2__ codec_setup_info ;


 int OV_EBADHEADER ;
 int OV_EFAULT ;
 int OV_EVERSION ;
 int oggpack_read (int *,int) ;
 int vorbis_info_clear (TYPE_1__*) ;

__attribute__((used)) static int _vorbis_unpack_info(vorbis_info *vi,oggpack_buffer *opb){
  codec_setup_info *ci=vi->codec_setup;
  if(!ci)return(OV_EFAULT);

  vi->version=oggpack_read(opb,32);
  if(vi->version!=0)return(OV_EVERSION);

  vi->channels=oggpack_read(opb,8);
  vi->rate=oggpack_read(opb,32);

  vi->bitrate_upper=oggpack_read(opb,32);
  vi->bitrate_nominal=oggpack_read(opb,32);
  vi->bitrate_lower=oggpack_read(opb,32);

  ci->blocksizes[0]=1<<oggpack_read(opb,4);
  ci->blocksizes[1]=1<<oggpack_read(opb,4);

  if(vi->rate<1)goto err_out;
  if(vi->channels<1)goto err_out;
  if(ci->blocksizes[0]<64)goto err_out;
  if(ci->blocksizes[1]<ci->blocksizes[0])goto err_out;
  if(ci->blocksizes[1]>8192)goto err_out;

  if(oggpack_read(opb,1)!=1)goto err_out;

  return(0);
 err_out:
  vorbis_info_clear(vi);
  return(OV_EBADHEADER);
}
