
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int* vconfig; struct pci_dev* pdev; } ;
struct perm_bits {int* write; int* virt; } ;
struct pci_dev {int dummy; } ;
typedef int __le32 ;


 int memcpy (int*,int*,int) ;
 int vfio_user_config_read (struct pci_dev*,int,int*,int) ;
 int vfio_user_config_write (struct pci_dev*,int,int,int) ;

__attribute__((used)) static int vfio_default_config_write(struct vfio_pci_device *vdev, int pos,
         int count, struct perm_bits *perm,
         int offset, __le32 val)
{
 __le32 virt = 0, write = 0;

 memcpy(&write, perm->write + offset, count);

 if (!write)
  return count;

 memcpy(&virt, perm->virt + offset, count);


 if (write & virt) {
  __le32 virt_val = 0;

  memcpy(&virt_val, vdev->vconfig + pos, count);

  virt_val &= ~(write & virt);
  virt_val |= (val & (write & virt));

  memcpy(vdev->vconfig + pos, &virt_val, count);
 }


 if (write & ~virt) {
  struct pci_dev *pdev = vdev->pdev;
  __le32 phys_val = 0;
  int ret;

  ret = vfio_user_config_read(pdev, pos, &phys_val, count);
  if (ret)
   return ret;

  phys_val &= ~(write & ~virt);
  phys_val |= (val & (write & ~virt));

  ret = vfio_user_config_write(pdev, pos, phys_val, count);
  if (ret)
   return ret;
 }

 return count;
}
