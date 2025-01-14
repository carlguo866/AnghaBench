
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ is_m_series; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;


 int ni_m_series_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,unsigned int*,unsigned int,int) ;
 int ni_old_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,unsigned int*,unsigned int) ;

__attribute__((used)) static int ni_ao_config_chanlist(struct comedi_device *dev,
     struct comedi_subdevice *s,
     unsigned int chanspec[], unsigned int n_chans,
     int timed)
{
 struct ni_private *devpriv = dev->private;

 if (devpriv->is_m_series)
  return ni_m_series_ao_config_chanlist(dev, s, chanspec, n_chans,
            timed);
 else
  return ni_old_ao_config_chanlist(dev, s, chanspec, n_chans);
}
