
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

void destroyMMBitmapBuffer(char * bitmapBuffer, void * hint)
{
 if (bitmapBuffer != ((void*)0))
 {
  free(bitmapBuffer);
 }
}
