
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3_pci {scalar_t__ base; scalar_t__ non_pre_bus_addr; scalar_t__ non_pre_mem; scalar_t__ pre_bus_addr; scalar_t__ pre_mem; scalar_t__ io_bus_addr; int io_mem; struct device* dev; } ;
struct resource_entry {struct resource* res; scalar_t__ offset; } ;
struct resource {char* name; int flags; scalar_t__ start; } ;
struct pci_host_bridge {scalar_t__ busnr; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 int EINVAL ;



 int IORESOURCE_PREFETCH ;
 scalar_t__ SZ_256M ;
 scalar_t__ V3_LB_BASE0 ;
 scalar_t__ V3_LB_BASE1 ;
 scalar_t__ V3_LB_BASE2 ;
 int V3_LB_BASE2_ENABLE ;
 int V3_LB_BASE_ADR_SIZE_256MB ;
 int V3_LB_BASE_ENABLE ;
 int V3_LB_BASE_PREFETCH ;
 scalar_t__ V3_LB_MAP0 ;
 scalar_t__ V3_LB_MAP1 ;
 scalar_t__ V3_LB_MAP2 ;
 int V3_LB_MAP_TYPE_MEM ;
 int dev_dbg (struct device*,char*,struct resource*,...) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int,struct resource*) ;
 int devm_pci_remap_iospace (struct device*,struct resource*,int ) ;
 scalar_t__ resource_size (struct resource*) ;
 int resource_type (struct resource*) ;
 int v3_addr_to_lb_base (scalar_t__) ;
 int v3_addr_to_lb_base2 (int ) ;
 int v3_addr_to_lb_map (scalar_t__) ;
 int v3_addr_to_lb_map2 (scalar_t__) ;
 int writel (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int v3_pci_setup_resource(struct v3_pci *v3,
     resource_size_t io_base,
     struct pci_host_bridge *host,
     struct resource_entry *win)
{
 struct device *dev = v3->dev;
 struct resource *mem;
 struct resource *io;
 int ret;

 switch (resource_type(win->res)) {
 case 129:
  io = win->res;
  io->name = "V3 PCI I/O";
  v3->io_mem = io_base;
  v3->io_bus_addr = io->start - win->offset;
  dev_dbg(dev, "I/O window %pR, bus addr %pap\n",
   io, &v3->io_bus_addr);
  ret = devm_pci_remap_iospace(dev, io, io_base);
  if (ret) {
   dev_warn(dev,
     "error %d: failed to map resource %pR\n",
     ret, io);
   return ret;
  }

  writel(v3_addr_to_lb_base2(v3->io_mem) |
         V3_LB_BASE2_ENABLE,
         v3->base + V3_LB_BASE2);
  writew(v3_addr_to_lb_map2(v3->io_bus_addr),
         v3->base + V3_LB_MAP2);
  break;
 case 128:
  mem = win->res;
  if (mem->flags & IORESOURCE_PREFETCH) {
   mem->name = "V3 PCI PRE-MEM";
   v3->pre_mem = mem->start;
   v3->pre_bus_addr = mem->start - win->offset;
   dev_dbg(dev, "PREFETCHABLE MEM window %pR, bus addr %pap\n",
    mem, &v3->pre_bus_addr);
   if (resource_size(mem) != SZ_256M) {
    dev_err(dev, "prefetchable memory range is not 256MB\n");
    return -EINVAL;
   }
   if (v3->non_pre_mem &&
       (mem->start != v3->non_pre_mem + SZ_256M)) {
    dev_err(dev,
     "prefetchable memory is not adjacent to non-prefetchable memory\n");
    return -EINVAL;
   }

   writel(v3_addr_to_lb_base(v3->pre_mem) |
          V3_LB_BASE_ADR_SIZE_256MB |
          V3_LB_BASE_PREFETCH |
          V3_LB_BASE_ENABLE,
          v3->base + V3_LB_BASE1);
   writew(v3_addr_to_lb_map(v3->pre_bus_addr) |
          V3_LB_MAP_TYPE_MEM,
          v3->base + V3_LB_MAP1);
  } else {
   mem->name = "V3 PCI NON-PRE-MEM";
   v3->non_pre_mem = mem->start;
   v3->non_pre_bus_addr = mem->start - win->offset;
   dev_dbg(dev, "NON-PREFETCHABLE MEM window %pR, bus addr %pap\n",
    mem, &v3->non_pre_bus_addr);
   if (resource_size(mem) != SZ_256M) {
    dev_err(dev,
     "non-prefetchable memory range is not 256MB\n");
    return -EINVAL;
   }

   writel(v3_addr_to_lb_base(v3->non_pre_mem) |
          V3_LB_BASE_ADR_SIZE_256MB |
          V3_LB_BASE_ENABLE,
          v3->base + V3_LB_BASE0);
   writew(v3_addr_to_lb_map(v3->non_pre_bus_addr) |
          V3_LB_MAP_TYPE_MEM,
          v3->base + V3_LB_MAP0);
  }
  break;
 case 130:
  dev_dbg(dev, "BUS %pR\n", win->res);
  host->busnr = win->res->start;
  break;
 default:
  dev_info(dev, "Unknown resource type %lu\n",
    resource_type(win->res));
  break;
 }

 return 0;
}
