
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_look_residue ;
typedef int vorbis_block ;
typedef int ogg_int32_t ;


 int _01inverse (int *,int *,int **,int,int ) ;
 int vorbis_book_decodev_add ;

int res1_inverse(vorbis_block *vb,vorbis_look_residue *vl,
   ogg_int32_t **in,int *nonzero,int ch){
  int i,used=0;
  for(i=0;i<ch;i++)
    if(nonzero[i])
      in[used++]=in[i];
  if(used)
    return(_01inverse(vb,vl,in,used,vorbis_book_decodev_add));
  else
    return(0);
}
