
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdImageConvolution (int ,float**,int,int ) ;

int gdImageMeanRemoval(gdImagePtr im)
{
 float filter[3][3] = {{-1.0,-1.0,-1.0},
    {-1.0,9.0,-1.0},
    {-1.0,-1.0,-1.0}};

 return gdImageConvolution(im, filter, 1, 0);
}
