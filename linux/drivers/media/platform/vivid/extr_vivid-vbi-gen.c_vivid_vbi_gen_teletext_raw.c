
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int teletext ;
struct v4l2_sliced_vbi_data {int data; } ;


 int memcpy (int*,int ,int) ;

__attribute__((used)) static void vivid_vbi_gen_teletext_raw(const struct v4l2_sliced_vbi_data *data,
  u8 *buf, unsigned sampling_rate)
{
 const unsigned rate = 6937500 / 10;
 u8 teletext[45] = { 0x55, 0x55, 0x27 };
 unsigned bit = 0;
 int i;

 memcpy(teletext + 3, data->data, sizeof(teletext) - 3);

 sampling_rate /= 10;

 for (i = 0, bit = 0; bit < sizeof(teletext) * 8; bit++) {
  unsigned n = ((bit + 1) * sampling_rate) / rate;
  u8 val = (teletext[bit / 8] & (1 << (bit & 7))) ? 0xc0 : 0x10;

  while (i < n)
   buf[i++] = val;
 }
}
