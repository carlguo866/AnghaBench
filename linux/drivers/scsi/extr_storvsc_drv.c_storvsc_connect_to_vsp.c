
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmstorage_channel_properties {int dummy; } ;
struct hv_device {int channel; } ;


 int memset (struct vmstorage_channel_properties*,int ,int) ;
 int storvsc_channel_init (struct hv_device*,int) ;
 int storvsc_on_channel_callback ;
 int vmbus_open (int ,int ,int ,void*,int,int ,int ) ;

__attribute__((used)) static int storvsc_connect_to_vsp(struct hv_device *device, u32 ring_size,
      bool is_fc)
{
 struct vmstorage_channel_properties props;
 int ret;

 memset(&props, 0, sizeof(struct vmstorage_channel_properties));

 ret = vmbus_open(device->channel,
    ring_size,
    ring_size,
    (void *)&props,
    sizeof(struct vmstorage_channel_properties),
    storvsc_on_channel_callback, device->channel);

 if (ret != 0)
  return ret;

 ret = storvsc_channel_init(device, is_fc);

 return ret;
}
