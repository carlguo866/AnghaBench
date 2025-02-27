
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {size_t* synchronous_mode; int base; size_t* index_polarity; } ;
struct counter_signal {int id; } ;
struct counter_device {struct quad8_iio* priv; } ;


 unsigned int const QUAD8_CTR_IDR ;
 int outb (unsigned int const,int const) ;

__attribute__((used)) static int quad8_index_polarity_set(struct counter_device *counter,
 struct counter_signal *signal, size_t index_polarity)
{
 struct quad8_iio *const priv = counter->priv;
 const size_t channel_id = signal->id - 16;
 const unsigned int idr_cfg = priv->synchronous_mode[channel_id] |
  index_polarity << 1;
 const int base_offset = priv->base + 2 * channel_id + 1;

 priv->index_polarity[channel_id] = index_polarity;


 outb(QUAD8_CTR_IDR | idr_cfg, base_offset);

 return 0;
}
