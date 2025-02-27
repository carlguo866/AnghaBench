
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_port_subscribe {int dummy; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct snd_emux {int register_mutex; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emux_dec_count (struct snd_emux*) ;
 int snd_emux_sounds_off_all (struct snd_emux_port*) ;

__attribute__((used)) static int
snd_emux_unuse(void *private_data, struct snd_seq_port_subscribe *info)
{
 struct snd_emux_port *p;
 struct snd_emux *emu;

 p = private_data;
 if (snd_BUG_ON(!p))
  return -EINVAL;
 emu = p->emu;
 if (snd_BUG_ON(!emu))
  return -EINVAL;

 mutex_lock(&emu->register_mutex);
 snd_emux_sounds_off_all(p);
 snd_emux_dec_count(emu);
 mutex_unlock(&emu->register_mutex);
 return 0;
}
