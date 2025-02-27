
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct pci_dev {unsigned int devfn; TYPE_1__* bus; } ;
struct efx_vf {unsigned int buftbl_base; unsigned int pci_rid; int buf; int pci_name; } ;
struct efx_nic {unsigned int vf_buftbl_base; unsigned int vf_count; struct efx_vf* vf; struct pci_dev* pci_dev; } ;
struct TYPE_2__ {int number; } ;


 int EFX_PAGE_SIZE ;
 unsigned int EFX_VF_BUFTBL_PER_VI ;
 int ENOENT ;
 int PCI_EXT_CAP_ID_SRIOV ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 scalar_t__ PCI_SRIOV_VF_OFFSET ;
 scalar_t__ PCI_SRIOV_VF_STRIDE ;
 int efx_nic_alloc_buffer (struct efx_nic*,int *,int ) ;
 int efx_sriov_vfs_fini (struct efx_nic*) ;
 unsigned int efx_vf_size (struct efx_nic*) ;
 int pci_domain_nr (TYPE_1__*) ;
 unsigned int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,unsigned int*) ;
 int snprintf (int ,int,char*,int,int,int,int) ;

__attribute__((used)) static int efx_sriov_vfs_init(struct efx_nic *efx)
{
 struct pci_dev *pci_dev = efx->pci_dev;
 unsigned index, devfn, sriov, buftbl_base;
 u16 offset, stride;
 struct efx_vf *vf;
 int rc;

 sriov = pci_find_ext_capability(pci_dev, PCI_EXT_CAP_ID_SRIOV);
 if (!sriov)
  return -ENOENT;

 pci_read_config_word(pci_dev, sriov + PCI_SRIOV_VF_OFFSET, &offset);
 pci_read_config_word(pci_dev, sriov + PCI_SRIOV_VF_STRIDE, &stride);

 buftbl_base = efx->vf_buftbl_base;
 devfn = pci_dev->devfn + offset;
 for (index = 0; index < efx->vf_count; ++index) {
  vf = efx->vf + index;


  vf->buftbl_base = buftbl_base;
  buftbl_base += EFX_VF_BUFTBL_PER_VI * efx_vf_size(efx);

  vf->pci_rid = devfn;
  snprintf(vf->pci_name, sizeof(vf->pci_name),
    "%04x:%02x:%02x.%d",
    pci_domain_nr(pci_dev->bus), pci_dev->bus->number,
    PCI_SLOT(devfn), PCI_FUNC(devfn));

  rc = efx_nic_alloc_buffer(efx, &vf->buf, EFX_PAGE_SIZE);
  if (rc)
   goto fail;

  devfn += stride;
 }

 return 0;

fail:
 efx_sriov_vfs_fini(efx);
 return rc;
}
