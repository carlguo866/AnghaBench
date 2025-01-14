
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_chan_spec {size_t channel; scalar_t__ differential; } ;
struct adc12138 {int dummy; } ;


 int adc12138_mode_programming (struct adc12138*,int,void*,int) ;

__attribute__((used)) static int __adc12138_start_conv(struct adc12138 *adc,
     struct iio_chan_spec const *channel,
     void *data, int len)

{
 static const u8 ch_to_mux[] = { 0, 4, 1, 5, 2, 6, 3, 7 };
 u8 mode = (ch_to_mux[channel->channel] << 4) |
    (channel->differential ? 0 : 0x80);

 return adc12138_mode_programming(adc, mode, data, len);
}
