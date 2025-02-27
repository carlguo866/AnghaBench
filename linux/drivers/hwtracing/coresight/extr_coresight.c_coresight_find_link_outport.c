
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coresight_device {int dev; TYPE_1__* pdata; } ;
struct coresight_connection {int outport; struct coresight_device* child_dev; } ;
struct TYPE_2__ {int nr_outport; struct coresight_connection* conns; } ;


 int ENODEV ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_name (int *) ;

__attribute__((used)) static int coresight_find_link_outport(struct coresight_device *csdev,
           struct coresight_device *child)
{
 int i;
 struct coresight_connection *conn;

 for (i = 0; i < csdev->pdata->nr_outport; i++) {
  conn = &csdev->pdata->conns[i];
  if (conn->child_dev == child)
   return conn->outport;
 }

 dev_err(&csdev->dev, "couldn't find outport, parent: %s, child: %s\n",
  dev_name(&csdev->dev), dev_name(&child->dev));

 return -ENODEV;
}
