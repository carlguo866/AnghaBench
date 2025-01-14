
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pci_dev; scalar_t__ peer_dev; } ;
typedef TYPE_1__ qla_host_t ;
typedef scalar_t__ device_t ;


 scalar_t__ device_get_children (int ,scalar_t__**,int*) ;
 int device_get_parent (scalar_t__) ;
 scalar_t__ pci_get_device (scalar_t__) ;
 int pci_get_slot (scalar_t__) ;

__attribute__((used)) static void
qla_get_peer(qla_host_t *ha)
{
 device_t *peers;
 int count, i, slot;
 int my_slot = pci_get_slot(ha->pci_dev);

 if (device_get_children(device_get_parent(ha->pci_dev), &peers, &count))
  return;

 for (i = 0; i < count; i++) {
  slot = pci_get_slot(peers[i]);

  if ((slot >= 0) && (slot == my_slot) &&
   (pci_get_device(peers[i]) ==
    pci_get_device(ha->pci_dev))) {
   if (ha->pci_dev != peers[i])
    ha->peer_dev = peers[i];
  }
 }
}
