
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl818_private {unsigned int act_chanlist_len; unsigned int* act_chanlist; scalar_t__ act_chanlist_pos; } ;
struct comedi_device {struct pcl818_private* private; } ;


 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 int pcl818_ai_set_chan_range (struct comedi_device*,unsigned int,unsigned int) ;
 int pcl818_ai_set_chan_scan (struct comedi_device*,unsigned int,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void pcl818_ai_setup_chanlist(struct comedi_device *dev,
         unsigned int *chanlist,
         unsigned int seglen)
{
 struct pcl818_private *devpriv = dev->private;
 unsigned int first_chan = CR_CHAN(chanlist[0]);
 unsigned int last_chan;
 unsigned int range;
 int i;

 devpriv->act_chanlist_len = seglen;
 devpriv->act_chanlist_pos = 0;


 for (i = 0; i < seglen; i++) {
  last_chan = CR_CHAN(chanlist[i]);
  range = CR_RANGE(chanlist[i]);

  devpriv->act_chanlist[i] = last_chan;

  pcl818_ai_set_chan_range(dev, last_chan, range);
 }

 udelay(1);

 pcl818_ai_set_chan_scan(dev, first_chan, last_chan);
}
