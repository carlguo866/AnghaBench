
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rme96 {unsigned int wcreg; int lock; scalar_t__ iobase; } ;


 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 unsigned int RME96_WCR_SEL ;
 struct rme96* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int
snd_rme96_put_loopback_control(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct rme96 *rme96 = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change;

 val = ucontrol->value.integer.value[0] ? 0 : RME96_WCR_SEL;
 spin_lock_irq(&rme96->lock);
 val = (rme96->wcreg & ~RME96_WCR_SEL) | val;
 change = val != rme96->wcreg;
 rme96->wcreg = val;
 writel(val, rme96->iobase + RME96_IO_CONTROL_REGISTER);
 spin_unlock_irq(&rme96->lock);
 return change;
}
