
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static int get_pixel32(uint8 * data, int x, int y,
                       int width, int height)
{
  if (x >= 0 && y >= 0 && x < width && y < height)
  {
    return *(((int*)data) + (y * width + x));
  }
  else
  {
    return 0;
  }
}
