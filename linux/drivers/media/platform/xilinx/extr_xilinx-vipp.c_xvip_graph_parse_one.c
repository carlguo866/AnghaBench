
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xvip_graph_entity {int dummy; } ;
struct xvip_composite_device {int notifier; TYPE_1__* dev; } ;
struct v4l2_async_subdev {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct v4l2_async_subdev*) ;
 int PTR_ERR (struct v4l2_async_subdev*) ;
 int dev_dbg (TYPE_1__*,char*,struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_graph_get_next_endpoint (struct fwnode_handle*,struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_graph_get_remote_port_parent (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 struct fwnode_handle* of_fwnode_handle (int ) ;
 struct v4l2_async_subdev* v4l2_async_notifier_add_fwnode_subdev (int *,struct fwnode_handle*,int) ;
 int v4l2_async_notifier_cleanup (int *) ;
 scalar_t__ xvip_graph_find_entity (struct xvip_composite_device*,struct fwnode_handle*) ;

__attribute__((used)) static int xvip_graph_parse_one(struct xvip_composite_device *xdev,
    struct fwnode_handle *fwnode)
{
 struct fwnode_handle *remote;
 struct fwnode_handle *ep = ((void*)0);
 int ret = 0;

 dev_dbg(xdev->dev, "parsing node %p\n", fwnode);

 while (1) {
  struct v4l2_async_subdev *asd;

  ep = fwnode_graph_get_next_endpoint(fwnode, ep);
  if (ep == ((void*)0))
   break;

  dev_dbg(xdev->dev, "handling endpoint %p\n", ep);

  remote = fwnode_graph_get_remote_port_parent(ep);
  if (remote == ((void*)0)) {
   ret = -EINVAL;
   goto err_notifier_cleanup;
  }

  fwnode_handle_put(ep);


  if (remote == of_fwnode_handle(xdev->dev->of_node) ||
      xvip_graph_find_entity(xdev, remote)) {
   fwnode_handle_put(remote);
   continue;
  }

  asd = v4l2_async_notifier_add_fwnode_subdev(
   &xdev->notifier, remote,
   sizeof(struct xvip_graph_entity));
  fwnode_handle_put(remote);
  if (IS_ERR(asd)) {
   ret = PTR_ERR(asd);
   goto err_notifier_cleanup;
  }
 }

 return 0;

err_notifier_cleanup:
 v4l2_async_notifier_cleanup(&xdev->notifier);
 fwnode_handle_put(ep);
 return ret;
}
