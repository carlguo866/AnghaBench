
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_4__ {struct v4l2_async_notifier* subdev_notifier; } ;
struct csi_priv {TYPE_1__ sd; TYPE_3__* dev; } ;
struct TYPE_5__ {int parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct fwnode_handle* dev_fwnode (TYPE_3__*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,unsigned int*) ;
 int imx_csi_parse_endpoint ;
 int kfree (struct v4l2_async_notifier*) ;
 struct v4l2_async_notifier* kzalloc (int,int ) ;
 int v4l2_async_notifier_cleanup (struct v4l2_async_notifier*) ;
 int v4l2_async_notifier_init (struct v4l2_async_notifier*) ;
 int v4l2_async_notifier_parse_fwnode_endpoints_by_port (int ,struct v4l2_async_notifier*,int,unsigned int,int ) ;
 int v4l2_async_notifier_unregister (struct v4l2_async_notifier*) ;
 int v4l2_async_register_subdev (TYPE_1__*) ;
 int v4l2_async_subdev_notifier_register (TYPE_1__*,struct v4l2_async_notifier*) ;

__attribute__((used)) static int imx_csi_async_register(struct csi_priv *priv)
{
 struct v4l2_async_notifier *notifier;
 struct fwnode_handle *fwnode;
 unsigned int port;
 int ret;

 notifier = kzalloc(sizeof(*notifier), GFP_KERNEL);
 if (!notifier)
  return -ENOMEM;

 v4l2_async_notifier_init(notifier);

 fwnode = dev_fwnode(priv->dev);


 ret = fwnode_property_read_u32(fwnode, "reg", &port);
 if (ret < 0)
  goto out_free;

 ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(
  priv->dev->parent, notifier, sizeof(struct v4l2_async_subdev),
  port, imx_csi_parse_endpoint);
 if (ret < 0)
  goto out_cleanup;

 ret = v4l2_async_subdev_notifier_register(&priv->sd, notifier);
 if (ret < 0)
  goto out_cleanup;

 ret = v4l2_async_register_subdev(&priv->sd);
 if (ret < 0)
  goto out_unregister;

 priv->sd.subdev_notifier = notifier;

 return 0;

out_unregister:
 v4l2_async_notifier_unregister(notifier);
out_cleanup:
 v4l2_async_notifier_cleanup(notifier);
out_free:
 kfree(notifier);

 return ret;
}
