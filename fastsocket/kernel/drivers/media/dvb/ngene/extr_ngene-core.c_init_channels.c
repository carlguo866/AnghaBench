
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ngene {TYPE_1__* channel; } ;
struct TYPE_3__ {int number; } ;


 int MAX_STREAM ;
 scalar_t__ init_channel (TYPE_1__*) ;
 int release_channel (TYPE_1__*) ;

__attribute__((used)) static int init_channels(struct ngene *dev)
{
 int i, j;

 for (i = 0; i < MAX_STREAM; i++) {
  dev->channel[i].number = i;
  if (init_channel(&dev->channel[i]) < 0) {
   for (j = i - 1; j >= 0; j--)
    release_channel(&dev->channel[j]);
   return -1;
  }
 }
 return 0;
}
