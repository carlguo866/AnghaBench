
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vz89x_data {int* buffer; TYPE_1__* chip; } ;
struct TYPE_2__ {int read_size; } ;



__attribute__((used)) static bool vz89te_measurement_is_valid(struct vz89x_data *data)
{
 u8 crc = 0;
 int i, sum = 0;

 for (i = 0; i < (data->chip->read_size - 1); i++) {
  sum = crc + data->buffer[i];
  crc = sum;
  crc += sum / 256;
 }

 return !((0xff - crc) == data->buffer[data->chip->read_size - 1]);
}
