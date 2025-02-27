
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_frequency_band {int dummy; } ;
struct file {int dummy; } ;


 int ENOTTY ;
 scalar_t__ VFL_TYPE_RADIO ;
 scalar_t__ VFL_TYPE_SDR ;
 struct video_device* video_devdata (struct file*) ;
 int vivid_radio_rx_enum_freq_bands (struct file*,void*,struct v4l2_frequency_band*) ;
 int vivid_sdr_enum_freq_bands (struct file*,void*,struct v4l2_frequency_band*) ;

__attribute__((used)) static int vidioc_enum_freq_bands(struct file *file, void *fh, struct v4l2_frequency_band *band)
{
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_type == VFL_TYPE_RADIO)
  return vivid_radio_rx_enum_freq_bands(file, fh, band);
 if (vdev->vfl_type == VFL_TYPE_SDR)
  return vivid_sdr_enum_freq_bands(file, fh, band);
 return -ENOTTY;
}
