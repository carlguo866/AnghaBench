
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TJFLAG_BOTTOMUP ;
 int TJPF_GRAY ;
 int memset (unsigned char*,int ,int) ;
 int* tjBlueOffset ;
 int* tjGreenOffset ;
 int* tjPixelSize ;
 int* tjRedOffset ;

void initBuf(unsigned char *buf, int w, int h, int pf, int flags)
{
 int roffset=tjRedOffset[pf];
 int goffset=tjGreenOffset[pf];
 int boffset=tjBlueOffset[pf];
 int ps=tjPixelSize[pf];
 int index, row, col, halfway=16;

 memset(buf, 0, w*h*ps);
 if(pf==TJPF_GRAY)
 {
  for(row=0; row<h; row++)
  {
   for(col=0; col<w; col++)
   {
    if(flags&TJFLAG_BOTTOMUP) index=(h-row-1)*w+col;
    else index=row*w+col;
    if(((row/8)+(col/8))%2==0) buf[index]=(row<halfway)? 255:0;
    else buf[index]=(row<halfway)? 76:226;
   }
  }
 }
 else
 {
  for(row=0; row<h; row++)
  {
   for(col=0; col<w; col++)
   {
    if(flags&TJFLAG_BOTTOMUP) index=(h-row-1)*w+col;
    else index=row*w+col;
    if(((row/8)+(col/8))%2==0)
    {
     if(row<halfway)
     {
      buf[index*ps+roffset]=255;
      buf[index*ps+goffset]=255;
      buf[index*ps+boffset]=255;
     }
    }
    else
    {
     buf[index*ps+roffset]=255;
     if(row>=halfway) buf[index*ps+goffset]=255;
    }
   }
  }
 }
}
