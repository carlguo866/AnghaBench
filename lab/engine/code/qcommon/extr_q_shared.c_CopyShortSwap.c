
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



void CopyShortSwap(void *dest, void *src)
{
 byte *to = dest, *from = src;

 to[0] = from[1];
 to[1] = from[0];
}
