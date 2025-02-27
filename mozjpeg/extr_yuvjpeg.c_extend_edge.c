
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char JSAMPLE ;



void extend_edge(JSAMPLE *image, int width, int height, unsigned char *yuv,
 int luma_width, int luma_height, int chroma_width, int chroma_height) {
  int x;
  int y;

  for (y = 0; y < luma_height; y++) {
    for (x = 0; x < luma_width; x++) {
      image[width*y + x] = yuv[luma_width*y + x];
    }
  }
  for (y = 0; y < chroma_height; y++) {
    for (x = 0; x < chroma_width; x++) {
      image[width*height + (width/2)*y + x] =
       yuv[luma_width*luma_height + chroma_width*y + x];
      image[width*height + (width/2)*((height/2) + y) + x] =
       yuv[luma_width*luma_height + chroma_width*(chroma_height + y) + x];
    }
  }


  for (y = 0; y < luma_height; y++) {
    for (x = luma_width; x < width; x++) {
      image[width*y + x] = image[width*y + (x - 1)];
    }
  }
  for (y = 0; y < chroma_height; y++) {
    for (x = chroma_width; x < width/2; x++) {
      image[width*height + (width/2)*y + x] =
       image[width*height + (width/2)*y + (x - 1)];
      image[width*height + (width/2)*((height/2) + y) + x] =
       image[width*height + (width/2)*((height/2) + y) + (x - 1)];
    }
  }


  for (x = 0; x < width; x++) {
    for (y = luma_height; y < height; y++) {
      image[width*y + x] = image[width*(y - 1) + x];
    }
  }
  for (x = 0; x < width/2; x++) {
    for (y = chroma_height; y < height/2; y++) {
      image[width*height + (width/2)*y + x] =
       image[width*height + (width/2)*(y - 1) + x];
      image[width*height + (width/2)*((height/2) + y) + x] =
       image[width*height + (width/2)*((height/2) + (y - 1)) + x];
    }
  }
}
