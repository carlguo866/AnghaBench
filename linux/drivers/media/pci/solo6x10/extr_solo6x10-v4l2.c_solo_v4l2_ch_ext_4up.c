
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {int nr_chans; int video_hsize; } ;


 int EINVAL ;
 int solo_vlines (struct solo_dev*) ;
 int solo_win_setup (struct solo_dev*,int,int,int,int,int,int) ;

__attribute__((used)) static int solo_v4l2_ch_ext_4up(struct solo_dev *solo_dev, u8 idx, int on)
{
 u8 ch = idx * 4;

 if (ch >= solo_dev->nr_chans)
  return -EINVAL;

 if (!on) {
  u8 i;

  for (i = ch; i < ch + 4; i++)
   solo_win_setup(solo_dev, i, solo_dev->video_hsize,
           solo_vlines(solo_dev),
           solo_dev->video_hsize,
           solo_vlines(solo_dev), 0);
  return 0;
 }


 solo_win_setup(solo_dev, ch, 0, 0, solo_dev->video_hsize / 2,
         solo_vlines(solo_dev) / 2, 3);
 solo_win_setup(solo_dev, ch + 1, solo_dev->video_hsize / 2, 0,
         solo_dev->video_hsize, solo_vlines(solo_dev) / 2, 3);

 solo_win_setup(solo_dev, ch + 2, 0, solo_vlines(solo_dev) / 2,
         solo_dev->video_hsize / 2, solo_vlines(solo_dev), 3);
 solo_win_setup(solo_dev, ch + 3, solo_dev->video_hsize / 2,
         solo_vlines(solo_dev) / 2, solo_dev->video_hsize,
         solo_vlines(solo_dev), 3);

 return 0;
}
