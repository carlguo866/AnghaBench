
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* post_fw_run ) (struct snd_sof_dev*) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*) ;

__attribute__((used)) static inline int snd_sof_dsp_post_fw_run(struct snd_sof_dev *sdev)
{
 if (sof_ops(sdev)->post_fw_run)
  return sof_ops(sdev)->post_fw_run(sdev);

 return 0;
}
