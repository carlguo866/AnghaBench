
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct vnic_dev {int (* devcmd_rtn ) (struct vnic_dev*,int,int) ;void** args; } ;
typedef enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;


 int stub1 (struct vnic_dev*,int,int) ;

__attribute__((used)) static int vnic_dev_cmd_no_proxy(struct vnic_dev *vdev,
 enum vnic_devcmd_cmd cmd, u64 *a0, u64 *a1, int wait)
{
 int err;

 vdev->args[0] = *a0;
 vdev->args[1] = *a1;

 err = vdev->devcmd_rtn(vdev, cmd, wait);

 *a0 = vdev->args[0];
 *a1 = vdev->args[1];

 return err;
}
