
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int preferred; struct TYPE_8__* next; } ;
typedef TYPE_1__ dev_info_t ;
struct TYPE_9__ {scalar_t__ (* load ) (int ,TYPE_1__*,void**,size_t*) ;TYPE_1__* (* devices ) () ;} ;
typedef TYPE_2__ boot_module_t ;
typedef size_t UINTN ;
typedef scalar_t__ EFI_STATUS ;


 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 int PATH_LOADER_EFI ;
 TYPE_2__** boot_modules ;
 size_t num_boot_modules ;
 TYPE_1__* stub1 () ;
 scalar_t__ stub2 (int ,TYPE_1__*,void**,size_t*) ;

__attribute__((used)) static EFI_STATUS
load_loader(const boot_module_t **modp, dev_info_t **devinfop, void **bufp,
    size_t *bufsize, int preferred)
{
 UINTN i;
 dev_info_t *dev;
 const boot_module_t *mod;

 for (i = 0; i < num_boot_modules; i++) {
  mod = boot_modules[i];
  for (dev = mod->devices(); dev != ((void*)0); dev = dev->next) {
   if (dev->preferred != preferred)
    continue;

   if (mod->load(PATH_LOADER_EFI, dev, bufp, bufsize) ==
       EFI_SUCCESS) {
    *devinfop = dev;
    *modp = mod;
    return (EFI_SUCCESS);
   }
  }
 }

 return (EFI_NOT_FOUND);
}
