
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb_csp {int dummy; } ;
struct snd_hwdep {struct snd_sb_csp* private_data; } ;
struct file {int dummy; } ;


 int snd_sb_csp_use (struct snd_sb_csp*) ;

__attribute__((used)) static int snd_sb_csp_open(struct snd_hwdep * hw, struct file *file)
{
 struct snd_sb_csp *p = hw->private_data;
 return (snd_sb_csp_use(p));
}
