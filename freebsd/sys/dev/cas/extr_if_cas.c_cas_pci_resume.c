
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cas_resume (int ) ;
 int device_get_softc (int ) ;

__attribute__((used)) static int
cas_pci_resume(device_t dev)
{

 cas_resume(device_get_softc(dev));
 return (0);
}
