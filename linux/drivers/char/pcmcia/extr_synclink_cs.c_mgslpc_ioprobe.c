
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int mgslpc_ioprobe(struct pcmcia_device *p_dev, void *priv_data)
{
 return pcmcia_request_io(p_dev);
}
