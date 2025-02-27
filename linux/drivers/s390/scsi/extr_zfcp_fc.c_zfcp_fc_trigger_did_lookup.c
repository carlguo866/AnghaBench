
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_port {int dev; int gid_pn_work; TYPE_1__* adapter; } ;
struct TYPE_2__ {int work_queue; } ;


 int get_device (int *) ;
 int put_device (int *) ;
 int queue_work (int ,int *) ;

void zfcp_fc_trigger_did_lookup(struct zfcp_port *port)
{
 get_device(&port->dev);
 if (!queue_work(port->adapter->work_queue, &port->gid_pn_work))
  put_device(&port->dev);
}
