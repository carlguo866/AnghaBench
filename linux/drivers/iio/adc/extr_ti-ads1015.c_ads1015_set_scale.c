
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int realbits; } ;
struct iio_chan_spec {size_t address; TYPE_1__ scan_type; } ;
struct ads1015_data {TYPE_2__* channel_data; } ;
struct TYPE_4__ {int pga; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* ads1015_fullscale_range ;
 int div_s64 (int,int) ;

__attribute__((used)) static int ads1015_set_scale(struct ads1015_data *data,
        struct iio_chan_spec const *chan,
        int scale, int uscale)
{
 int i;
 int fullscale = div_s64((scale * 1000000LL + uscale) <<
    (chan->scan_type.realbits - 1), 1000000);

 for (i = 0; i < ARRAY_SIZE(ads1015_fullscale_range); i++) {
  if (ads1015_fullscale_range[i] == fullscale) {
   data->channel_data[chan->address].pga = i;
   return 0;
  }
 }

 return -EINVAL;
}
