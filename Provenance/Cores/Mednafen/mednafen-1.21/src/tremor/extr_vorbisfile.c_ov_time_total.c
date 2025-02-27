
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ogg_int64_t ;
struct TYPE_5__ {scalar_t__ ready_state; int links; TYPE_1__* vi; scalar_t__* pcmlengths; int seekable; } ;
struct TYPE_4__ {int rate; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EINVAL ;

ogg_int64_t ov_time_total(OggVorbis_File *vf,int i){
  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable || i>=vf->links)return(OV_EINVAL);
  if(i<0){
    ogg_int64_t acc=0;
    int i;
    for(i=0;i<vf->links;i++)
      acc+=ov_time_total(vf,i);
    return(acc);
  }else{
    return(((ogg_int64_t)vf->pcmlengths[i*2+1])*1000/vf->vi[i].rate);
  }
}
