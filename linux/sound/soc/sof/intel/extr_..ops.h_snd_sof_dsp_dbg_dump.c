
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {void (* dbg_dump ) (struct snd_sof_dev*,int ) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 void stub1 (struct snd_sof_dev*,int ) ;

__attribute__((used)) static inline void snd_sof_dsp_dbg_dump(struct snd_sof_dev *sdev, u32 flags)
{
 if (sof_ops(sdev)->dbg_dump)
  return sof_ops(sdev)->dbg_dump(sdev, flags);
}
