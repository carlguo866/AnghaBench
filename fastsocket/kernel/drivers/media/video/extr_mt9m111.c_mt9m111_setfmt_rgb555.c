
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {scalar_t__ swap_rgb_even_odd; scalar_t__ swap_rgb_red_blue; } ;
struct i2c_client {int dummy; } ;


 int MT9M111_OUTFMT_RGB ;
 int MT9M111_OUTFMT_RGB555 ;
 int MT9M111_OUTFMT_SWAP_RGB_EVEN ;
 int MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr ;
 int mt9m111_setup_pixfmt (struct i2c_client*,int) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;

__attribute__((used)) static int mt9m111_setfmt_rgb555(struct i2c_client *client)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 int val = 0;

 if (mt9m111->swap_rgb_red_blue)
  val |= MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr;
 if (mt9m111->swap_rgb_even_odd)
  val |= MT9M111_OUTFMT_SWAP_RGB_EVEN;
 val |= MT9M111_OUTFMT_RGB | MT9M111_OUTFMT_RGB555;

 return mt9m111_setup_pixfmt(client, val);
}
