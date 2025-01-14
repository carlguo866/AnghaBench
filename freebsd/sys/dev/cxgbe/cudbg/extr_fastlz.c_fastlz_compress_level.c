
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fastlz1_compress (void const*,int,void*) ;
 int fastlz2_compress (void const*,int,void*) ;

int fastlz_compress_level(int level, const void *input, int length,
     void *output)
{
 if (level == 1)
  return fastlz1_compress(input, length, output);
 if (level == 2)
  return fastlz2_compress(input, length, output);

 return 0;
}
