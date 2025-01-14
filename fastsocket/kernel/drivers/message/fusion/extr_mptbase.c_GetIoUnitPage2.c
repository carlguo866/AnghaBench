
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int dma_addr_t ;
struct TYPE_9__ {TYPE_4__* hdr; } ;
struct TYPE_13__ {int physAddr; int action; scalar_t__ timeout; scalar_t__ pageAddr; scalar_t__ dir; TYPE_1__ cfghdr; } ;
struct TYPE_12__ {int PageLength; int PageNumber; int PageType; scalar_t__ PageVersion; } ;
struct TYPE_11__ {int BiosVersion; } ;
struct TYPE_10__ {int pcidev; int biosVersion; } ;
typedef TYPE_2__ MPT_ADAPTER ;
typedef TYPE_3__ IOUnitPage2_t ;
typedef TYPE_4__ ConfigPageHeader_t ;
typedef TYPE_5__ CONFIGPARMS ;


 int ENOMEM ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_IO_UNIT ;
 int le32_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 int mpt_config (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,int *,int) ;

__attribute__((used)) static int
GetIoUnitPage2(MPT_ADAPTER *ioc)
{
 ConfigPageHeader_t hdr;
 CONFIGPARMS cfg;
 IOUnitPage2_t *ppage_alloc;
 dma_addr_t page_dma;
 int data_sz;
 int rc;


 hdr.PageVersion = 0;
 hdr.PageLength = 0;
 hdr.PageNumber = 2;
 hdr.PageType = MPI_CONFIG_PAGETYPE_IO_UNIT;
 cfg.cfghdr.hdr = &hdr;
 cfg.physAddr = -1;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.pageAddr = 0;
 cfg.timeout = 0;

 if ((rc = mpt_config(ioc, &cfg)) != 0)
  return rc;

 if (hdr.PageLength == 0)
  return 0;


 data_sz = hdr.PageLength * 4;
 rc = -ENOMEM;
 ppage_alloc = (IOUnitPage2_t *) pci_alloc_consistent(ioc->pcidev, data_sz, &page_dma);
 if (ppage_alloc) {
  memset((u8 *)ppage_alloc, 0, data_sz);
  cfg.physAddr = page_dma;
  cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;


  if ((rc = mpt_config(ioc, &cfg)) == 0)
   ioc->biosVersion = le32_to_cpu(ppage_alloc->BiosVersion);

  pci_free_consistent(ioc->pcidev, data_sz, (u8 *) ppage_alloc, page_dma);
 }

 return rc;
}
