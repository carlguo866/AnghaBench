
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {int dummy; } ;


 scalar_t__ VIRTIO_PCI_HOST_FEATURES ;
 int ioread32 (scalar_t__) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

__attribute__((used)) static u32 vp_get_features(struct virtio_device *vdev)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);



 return ioread32(vp_dev->ioaddr + VIRTIO_PCI_HOST_FEATURES);
}
