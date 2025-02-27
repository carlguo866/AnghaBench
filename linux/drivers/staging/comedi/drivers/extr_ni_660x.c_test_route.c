
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int routing_tables; } ;
struct comedi_device {struct ni_660x_private* private; } ;
typedef scalar_t__ s8 ;


 scalar_t__ CR_CHAN (unsigned int) ;
 scalar_t__ get_output_select_source (unsigned int,struct comedi_device*) ;
 scalar_t__ ni_route_to_register (scalar_t__,unsigned int,int *) ;

__attribute__((used)) static inline int test_route(unsigned int src, unsigned int dest,
        struct comedi_device *dev)
{
 struct ni_660x_private *devpriv = dev->private;
 s8 reg = ni_route_to_register(CR_CHAN(src), dest,
          &devpriv->routing_tables);

 if (reg < 0)
  return -1;
 if (get_output_select_source(dest, dev) != CR_CHAN(src))
  return 0;
 return 1;
}
