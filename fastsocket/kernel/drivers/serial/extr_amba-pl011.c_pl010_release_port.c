
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 int SZ_4K ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void pl010_release_port(struct uart_port *port)
{
 release_mem_region(port->mapbase, SZ_4K);
}
