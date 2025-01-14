
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vio_dev {int dummy; } ;
struct device_node {int dummy; } ;


 scalar_t__ FIRST_VIODASD ;
 struct device_node* do_device_node (struct device_node*,char*,scalar_t__,scalar_t__,char*,char*,int *) ;
 int free_node (struct device_node*) ;
 struct device_node* of_find_node_by_path (char*) ;
 int of_node_put (struct device_node*) ;
 struct vio_dev* vio_register_device_node (struct device_node*) ;

struct vio_dev *vio_create_viodasd(u32 unit)
{
 struct device_node *vio_root;
 struct device_node *np;
 struct vio_dev *vdev = ((void*)0);

 vio_root = of_find_node_by_path("/vdevice");
 if (!vio_root)
  return ((void*)0);
 np = do_device_node(vio_root, "viodasd", FIRST_VIODASD + unit, unit,
   "block", "IBM,iSeries-viodasd", ((void*)0));
 of_node_put(vio_root);
 if (np) {
  vdev = vio_register_device_node(np);
  if (!vdev)
   free_node(np);
 }
 return vdev;
}
