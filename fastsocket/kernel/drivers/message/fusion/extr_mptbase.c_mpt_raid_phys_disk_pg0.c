
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u8 ;
typedef TYPE_2__* pRaidPhysDiskPage0_t ;
typedef int dma_addr_t ;
struct TYPE_19__ {int pcidev; } ;
struct TYPE_16__ {TYPE_3__* hdr; } ;
struct TYPE_18__ {int physAddr; int PageLength; int MaxLBA; int pageAddr; int action; TYPE_1__ cfghdr; int PageType; int PageVersion; } ;
struct TYPE_17__ {int MaxLBA; } ;
typedef TYPE_3__ RaidPhysDiskPage0_t ;
typedef TYPE_4__ MPT_ADAPTER ;
typedef TYPE_3__ ConfigPageHeader_t ;
typedef TYPE_3__ CONFIGPARMS ;


 int EFAULT ;
 int ENOMEM ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_RAID_PHYSDISK ;
 int MPI_RAIDPHYSDISKPAGE0_PAGEVERSION ;
 int le32_to_cpu (int ) ;
 int memcpy (TYPE_3__*,TYPE_2__*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ mpt_config (TYPE_4__*,TYPE_3__*) ;
 TYPE_2__* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,TYPE_2__*,int) ;

int
mpt_raid_phys_disk_pg0(MPT_ADAPTER *ioc, u8 phys_disk_num,
   RaidPhysDiskPage0_t *phys_disk)
{
 CONFIGPARMS cfg;
 ConfigPageHeader_t hdr;
 dma_addr_t dma_handle;
 pRaidPhysDiskPage0_t buffer = ((void*)0);
 int rc;

 memset(&cfg, 0 , sizeof(CONFIGPARMS));
 memset(&hdr, 0 , sizeof(ConfigPageHeader_t));
 memset(phys_disk, 0, sizeof(RaidPhysDiskPage0_t));

 hdr.PageVersion = MPI_RAIDPHYSDISKPAGE0_PAGEVERSION;
 hdr.PageType = MPI_CONFIG_PAGETYPE_RAID_PHYSDISK;
 cfg.cfghdr.hdr = &hdr;
 cfg.physAddr = -1;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;

 if (mpt_config(ioc, &cfg) != 0) {
  rc = -EFAULT;
  goto out;
 }

 if (!hdr.PageLength) {
  rc = -EFAULT;
  goto out;
 }

 buffer = pci_alloc_consistent(ioc->pcidev, hdr.PageLength * 4,
     &dma_handle);

 if (!buffer) {
  rc = -ENOMEM;
  goto out;
 }

 cfg.physAddr = dma_handle;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
 cfg.pageAddr = phys_disk_num;

 if (mpt_config(ioc, &cfg) != 0) {
  rc = -EFAULT;
  goto out;
 }

 rc = 0;
 memcpy(phys_disk, buffer, sizeof(*buffer));
 phys_disk->MaxLBA = le32_to_cpu(buffer->MaxLBA);

 out:

 if (buffer)
  pci_free_consistent(ioc->pcidev, hdr.PageLength * 4, buffer,
      dma_handle);

 return rc;
}
