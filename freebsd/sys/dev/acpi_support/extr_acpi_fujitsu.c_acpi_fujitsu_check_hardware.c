
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int exists; int name; } ;
struct TYPE_15__ {int exists; int name; } ;
struct TYPE_14__ {int exists; int name; } ;
struct TYPE_13__ {int exists; int name; } ;
struct TYPE_12__ {int exists; int name; } ;
struct TYPE_11__ {int exists; int name; } ;
struct TYPE_10__ {int exists; int name; } ;
struct TYPE_9__ {int value; int exists; int name; } ;
struct acpi_fujitsu_softc {TYPE_8__ rvol; int handle; TYPE_7__ rbll; TYPE_6__ gmou; TYPE_5__ ghks; TYPE_4__ gbll; TYPE_3__ gbls; TYPE_2__ gvol; TYPE_1__ gsif; int dev; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int TRUE ;
 int acpi_GetInteger (int ,int ,int*) ;
 int device_printf (int ,char*) ;
 int fujitsu ;

__attribute__((used)) static uint8_t
acpi_fujitsu_check_hardware(struct acpi_fujitsu_softc *sc)
{
 int val;

 ACPI_SERIAL_ASSERT(fujitsu);

 if (ACPI_FAILURE(acpi_GetInteger(sc->handle,
 sc->gsif.name, &(sc->gsif.value)))) {
  sc->gsif.exists = 0;
  device_printf(sc->dev, "Couldn't query bitmask value\n");
 } else {
  sc->gsif.exists = 1;
 }


 if (ACPI_FAILURE(acpi_GetInteger(sc->handle,
     sc->gvol.name, &val))) {
  sc->gvol.exists = 0;
 } else {
  sc->gvol.exists = 1;
 }

 if (ACPI_FAILURE(acpi_GetInteger(sc->handle,
  sc->gbls.name, &val))) {
  sc->gbls.exists = 0;
 } else {
  sc->gbls.exists = 1;
 }


 if (sc->gbls.exists || ACPI_FAILURE(acpi_GetInteger(sc->handle,
     sc->gbll.name, &val))) {
  sc->gbll.exists = 0;
 } else {
  sc->gbll.exists = 1;
 }

 if (ACPI_FAILURE(acpi_GetInteger(sc->handle,
     sc->ghks.name, &val))) {
  sc->ghks.exists = 0;
 } else {
  sc->ghks.exists = 1;
 }

 if (ACPI_FAILURE(acpi_GetInteger(sc->handle,
     sc->gmou.name, &val))) {
  sc->gmou.exists = 0;
 } else {
  sc->gmou.exists = 1;
 }

 if (ACPI_FAILURE(acpi_GetInteger(sc->handle,
     sc->rbll.name, &val))) {
  sc->rbll.exists = 0;
 } else {
  sc->rbll.exists = 1;
 }

 if (ACPI_FAILURE(acpi_GetInteger(sc->handle,
     sc->rvol.name, &val))) {
  sc->rvol.exists = 0;
 } else {
  sc->rvol.exists = 1;
 }

 return (TRUE);
}
