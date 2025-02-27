
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ahd_softc {int bugs; TYPE_1__* platform_data; void** bshs; void** tags; int dev_softc; } ;
struct TYPE_2__ {int* regs_res_type; int* regs_res_id; struct resource** regs; } ;


 int AHD_CORRECTABLE_ERROR (struct ahd_softc*) ;
 int AHD_PCIX_MMAPIO_BUG ;
 int AHD_PCI_IOADDR0 ;
 int AHD_PCI_IOADDR1 ;
 int AHD_PCI_MEMADDR ;
 int AHD_UNCORRECTABLE_ERROR (struct ahd_softc*) ;
 int ENOMEM ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ ahd_pci_test_register_access (struct ahd_softc*) ;
 int aic_get_pci_bus (int ) ;
 int aic_get_pci_function (int ) ;
 int aic_get_pci_slot (int ) ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int,int*,int ) ;
 int bus_release_resource (int ,int,int,struct resource*) ;
 int bus_space_subregion (void*,void*,int,int,void**) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 void* rman_get_bushandle (struct resource*) ;
 void* rman_get_bustag (struct resource*) ;

int
ahd_pci_map_registers(struct ahd_softc *ahd)
{
 struct resource *regs;
 struct resource *regs2;
 int regs_type;
 int regs_id;
 int regs_id2;
 int allow_memio;

 regs = ((void*)0);
 regs2 = ((void*)0);
 regs_type = 0;
 regs_id = 0;


 if (resource_int_value(device_get_name(ahd->dev_softc),
          device_get_unit(ahd->dev_softc),
          "allow_memio", &allow_memio) != 0) {
  if (bootverbose)
   device_printf(ahd->dev_softc,
          "Defaulting to MEMIO on\n");
  allow_memio = 1;
 }

 if ((ahd->bugs & AHD_PCIX_MMAPIO_BUG) == 0
  && allow_memio != 0) {

  regs_type = SYS_RES_MEMORY;
  regs_id = AHD_PCI_MEMADDR;
  regs = bus_alloc_resource_any(ahd->dev_softc, regs_type,
           &regs_id, RF_ACTIVE);
  if (regs != ((void*)0)) {
   int error;

   ahd->tags[0] = rman_get_bustag(regs);
   ahd->bshs[0] = rman_get_bushandle(regs);
   ahd->tags[1] = ahd->tags[0];
   error = bus_space_subregion(ahd->tags[0], ahd->bshs[0],
                    0x100,
                  0x100,
          &ahd->bshs[1]);




   if (error != 0
    || ahd_pci_test_register_access(ahd) != 0) {
    device_printf(ahd->dev_softc,
           "PCI Device %d:%d:%d failed memory "
           "mapped test.  Using PIO.\n",
           aic_get_pci_bus(ahd->dev_softc),
           aic_get_pci_slot(ahd->dev_softc),
           aic_get_pci_function(ahd->dev_softc));
    bus_release_resource(ahd->dev_softc, regs_type,
           regs_id, regs);
    regs = ((void*)0);
    AHD_CORRECTABLE_ERROR(ahd);
   }
  }
 }
 if (regs == ((void*)0)) {
  regs_type = SYS_RES_IOPORT;
  regs_id = AHD_PCI_IOADDR0;
  regs = bus_alloc_resource_any(ahd->dev_softc, regs_type,
           &regs_id, RF_ACTIVE);
  if (regs == ((void*)0)) {
   device_printf(ahd->dev_softc,
          "can't allocate register resources\n");
   AHD_UNCORRECTABLE_ERROR(ahd);
   return (ENOMEM);
  }
  ahd->tags[0] = rman_get_bustag(regs);
  ahd->bshs[0] = rman_get_bushandle(regs);


  regs_id2 = AHD_PCI_IOADDR1;
  regs2 = bus_alloc_resource_any(ahd->dev_softc, regs_type,
            &regs_id2, RF_ACTIVE);
  if (regs2 == ((void*)0)) {
   device_printf(ahd->dev_softc,
          "can't allocate register resources\n");
   AHD_UNCORRECTABLE_ERROR(ahd);
   return (ENOMEM);
  }
  ahd->tags[1] = rman_get_bustag(regs2);
  ahd->bshs[1] = rman_get_bushandle(regs2);
  ahd->platform_data->regs_res_type[1] = regs_type;
  ahd->platform_data->regs_res_id[1] = regs_id2;
  ahd->platform_data->regs[1] = regs2;
 }
 ahd->platform_data->regs_res_type[0] = regs_type;
 ahd->platform_data->regs_res_id[0] = regs_id;
 ahd->platform_data->regs[0] = regs;
 return (0);
}
