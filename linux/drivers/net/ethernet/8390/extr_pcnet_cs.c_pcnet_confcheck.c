
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ config_index; int io_lines; TYPE_1__** resource; } ;
struct TYPE_2__ {int end; } ;


 int EINVAL ;
 int try_io_port (struct pcmcia_device*) ;

__attribute__((used)) static int pcnet_confcheck(struct pcmcia_device *p_dev, void *priv_data)
{
 int *priv = priv_data;
 int try = (*priv & 0x1);

 *priv &= (p_dev->resource[2]->end >= 0x4000) ? 0x10 : ~0x10;

 if (p_dev->config_index == 0)
  return -EINVAL;

 if (p_dev->resource[0]->end + p_dev->resource[1]->end < 32)
  return -EINVAL;

 if (try)
  p_dev->io_lines = 16;
 return try_io_port(p_dev);
}
