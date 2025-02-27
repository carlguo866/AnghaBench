
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ogg_int32_t ;
typedef int LOOKUP_T ;


 scalar_t__ MULT31 (scalar_t__,int ) ;

void _vorbis_apply_window(ogg_int32_t *d,const void *window_p[2],
     long *blocksizes,
     int lW,int W,int nW){

  LOOKUP_T *window[2];
  long n=blocksizes[W];
  long ln=blocksizes[lW];
  long rn=blocksizes[nW];

  long leftbegin=n/4-ln/4;
  long leftend=leftbegin+ln/2;

  long rightbegin=n/2+n/4-rn/4;
  long rightend=rightbegin+rn/2;

  int i,p;

  window[0]=window_p[0];
  window[1]=window_p[1];

  for(i=0;i<leftbegin;i++)
    d[i]=0;

  for(p=0;i<leftend;i++,p++)
    d[i]=MULT31(d[i],window[lW][p]);

  for(i=rightbegin,p=rn/2-1;i<rightend;i++,p--)
    d[i]=MULT31(d[i],window[nW][p]);

  for(;i<n;i++)
    d[i]=0;
}
