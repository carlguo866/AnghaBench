
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;


 int ip_release (int ) ;

void
ipc_port_release(ipc_port_t port)
{
 ip_release(port);
}
