
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iio_channel {TYPE_2__* channel; TYPE_1__* indio_dev; } ;
struct TYPE_6__ {int * scan_mask; int demux_list; int * access; } ;
struct iio_cb_buffer {int (* cb ) (void const*,void*) ;struct iio_channel* channels; TYPE_3__ buffer; TYPE_1__* indio_dev; void* private; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int scan_index; } ;
struct TYPE_4__ {int masklength; } ;


 int EINVAL ;
 int ENOMEM ;
 struct iio_cb_buffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct iio_channel*) ;
 int PTR_ERR (struct iio_channel*) ;
 int bitmap_free (int *) ;
 int * bitmap_zalloc (int ,int ) ;
 int iio_buffer_init (TYPE_3__*) ;
 int iio_cb_access ;
 struct iio_channel* iio_channel_get_all (struct device*) ;
 int iio_channel_release_all (struct iio_channel*) ;
 int kfree (struct iio_cb_buffer*) ;
 struct iio_cb_buffer* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;

struct iio_cb_buffer *iio_channel_get_all_cb(struct device *dev,
          int (*cb)(const void *data,
             void *private),
          void *private)
{
 int ret;
 struct iio_cb_buffer *cb_buff;
 struct iio_channel *chan;

 cb_buff = kzalloc(sizeof(*cb_buff), GFP_KERNEL);
 if (cb_buff == ((void*)0))
  return ERR_PTR(-ENOMEM);

 iio_buffer_init(&cb_buff->buffer);

 cb_buff->private = private;
 cb_buff->cb = cb;
 cb_buff->buffer.access = &iio_cb_access;
 INIT_LIST_HEAD(&cb_buff->buffer.demux_list);

 cb_buff->channels = iio_channel_get_all(dev);
 if (IS_ERR(cb_buff->channels)) {
  ret = PTR_ERR(cb_buff->channels);
  goto error_free_cb_buff;
 }

 cb_buff->indio_dev = cb_buff->channels[0].indio_dev;
 cb_buff->buffer.scan_mask = bitmap_zalloc(cb_buff->indio_dev->masklength,
        GFP_KERNEL);
 if (cb_buff->buffer.scan_mask == ((void*)0)) {
  ret = -ENOMEM;
  goto error_release_channels;
 }
 chan = &cb_buff->channels[0];
 while (chan->indio_dev) {
  if (chan->indio_dev != cb_buff->indio_dev) {
   ret = -EINVAL;
   goto error_free_scan_mask;
  }
  set_bit(chan->channel->scan_index,
   cb_buff->buffer.scan_mask);
  chan++;
 }

 return cb_buff;

error_free_scan_mask:
 bitmap_free(cb_buff->buffer.scan_mask);
error_release_channels:
 iio_channel_release_all(cb_buff->channels);
error_free_cb_buff:
 kfree(cb_buff);
 return ERR_PTR(ret);
}
