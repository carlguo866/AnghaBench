
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; int membase; int dev; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
typedef scalar_t__ resource_size_t ;


 int EBUSY ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int ioremap (int ,scalar_t__) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,scalar_t__) ;
 int request_mem_region (int ,scalar_t__,char*) ;
 struct platform_device* to_platform_device (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int msm_request_port(struct uart_port *port)
{
 struct platform_device *pdev = to_platform_device(port->dev);
 struct resource *resource;
 resource_size_t size;

 resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (unlikely(!resource))
  return -ENXIO;
 size = resource->end - resource->start + 1;

 if (unlikely(!request_mem_region(port->mapbase, size, "msm_serial")))
  return -EBUSY;

 port->membase = ioremap(port->mapbase, size);
 if (!port->membase) {
  release_mem_region(port->mapbase, size);
  return -EBUSY;
 }

 return 0;
}
