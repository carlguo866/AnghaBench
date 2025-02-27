
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int lock; int * i2c_bus; } ;


 int UNSIGNED_BYTE_MAX ;
 int UNSIGNED_BYTE_MIN ;
 scalar_t__ VDEC_A_CNTRST_CTRL ;
 int VIDEO_PROCAMP_MAX ;
 int VIDEO_PROCAMP_MIN ;
 int cx25821_i2c_read (int *,scalar_t__,int*) ;
 int cx25821_i2c_write (int *,scalar_t__,int) ;
 int mapM (int,int,int,int ,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int medusa_set_contrast(struct cx25821_dev *dev, int contrast, int decoder)
{
 int ret_val = 0;
 int value = 0;
 u32 val = 0, tmp = 0;

 mutex_lock(&dev->lock);

 if ((contrast > VIDEO_PROCAMP_MAX) || (contrast < VIDEO_PROCAMP_MIN)) {
  mutex_unlock(&dev->lock);
  return -1;
 }

 ret_val =
     mapM(VIDEO_PROCAMP_MIN, VIDEO_PROCAMP_MAX, contrast,
   UNSIGNED_BYTE_MIN, UNSIGNED_BYTE_MAX, &value);
 val =
     cx25821_i2c_read(&dev->i2c_bus[0],
        VDEC_A_CNTRST_CTRL + (0x200 * decoder), &tmp);
 val &= 0xFFFFFF00;
 ret_val |=
     cx25821_i2c_write(&dev->i2c_bus[0],
         VDEC_A_CNTRST_CTRL + (0x200 * decoder),
         val | value);

 mutex_unlock(&dev->lock);
 return ret_val;
}
