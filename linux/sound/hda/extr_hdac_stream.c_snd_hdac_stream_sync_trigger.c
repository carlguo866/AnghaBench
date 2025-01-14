
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {struct hdac_bus* bus; } ;
struct hdac_bus {int dummy; } ;


 unsigned int AZX_REG_SSYNC ;
 unsigned int _snd_hdac_chip_readl (struct hdac_bus*,unsigned int) ;
 int _snd_hdac_chip_writel (struct hdac_bus*,unsigned int,unsigned int) ;

void snd_hdac_stream_sync_trigger(struct hdac_stream *azx_dev, bool set,
      unsigned int streams, unsigned int reg)
{
 struct hdac_bus *bus = azx_dev->bus;
 unsigned int val;

 if (!reg)
  reg = AZX_REG_SSYNC;
 val = _snd_hdac_chip_readl(bus, reg);
 if (set)
  val |= streams;
 else
  val &= ~streams;
 _snd_hdac_chip_writel(bus, reg, val);
}
