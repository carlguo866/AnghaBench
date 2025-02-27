
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ipr_mode_pages {int dummy; } ;
struct ipr_mode_page28 {int entry_length; int num_entries; struct ipr_dev_bus_entry* bus; } ;
struct ipr_ioa_cfg {struct ipr_bus_attributes* bus_attr; TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__ bus; } ;
struct ipr_dev_bus_entry {int flags; int max_xfer_rate; int bus_width; int extended_reset_delay; TYPE_2__ res_addr; } ;
struct ipr_bus_attributes {scalar_t__ qas_enabled; int max_xfer_rate; int bus_width; } ;
struct TYPE_3__ {int dev; } ;


 int IPR_EXTENDED_RESET_DELAY ;
 int IPR_GET_PHYS_LOC (TYPE_2__) ;
 scalar_t__ IPR_MAX_NUM_BUSES ;
 int IPR_SCSI_ATTR_DISABLE_QAS ;
 int IPR_SCSI_ATTR_ENABLE_QAS ;
 int IPR_SCSI_ATTR_QAS_MASK ;
 int cpu_to_be32 (int ) ;
 int dev_err (int *,char*,int ) ;
 struct ipr_mode_page28* ipr_get_mode_page (struct ipr_mode_pages*,int,int) ;

__attribute__((used)) static void ipr_modify_ioafp_mode_page_28(struct ipr_ioa_cfg *ioa_cfg,
        struct ipr_mode_pages *mode_pages)
{
 int i, entry_length;
 struct ipr_dev_bus_entry *bus;
 struct ipr_bus_attributes *bus_attr;
 struct ipr_mode_page28 *mode_page;

 mode_page = ipr_get_mode_page(mode_pages, 0x28,
          sizeof(struct ipr_mode_page28));

 entry_length = mode_page->entry_length;


 for (i = 0, bus = mode_page->bus;
      i < mode_page->num_entries;
      i++, bus = (struct ipr_dev_bus_entry *)((u8 *)bus + entry_length)) {
  if (bus->res_addr.bus > IPR_MAX_NUM_BUSES) {
   dev_err(&ioa_cfg->pdev->dev,
    "Invalid resource address reported: 0x%08X\n",
    IPR_GET_PHYS_LOC(bus->res_addr));
   continue;
  }

  bus_attr = &ioa_cfg->bus_attr[i];
  bus->extended_reset_delay = IPR_EXTENDED_RESET_DELAY;
  bus->bus_width = bus_attr->bus_width;
  bus->max_xfer_rate = cpu_to_be32(bus_attr->max_xfer_rate);
  bus->flags &= ~IPR_SCSI_ATTR_QAS_MASK;
  if (bus_attr->qas_enabled)
   bus->flags |= IPR_SCSI_ATTR_ENABLE_QAS;
  else
   bus->flags |= IPR_SCSI_ATTR_DISABLE_QAS;
 }
}
