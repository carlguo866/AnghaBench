
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_lpat_conversion_table {int lpat_count; struct acpi_lpat* lpat; } ;
struct acpi_lpat {int raw; int temp; } ;


 int ENOENT ;

int acpi_lpat_raw_to_temp(struct acpi_lpat_conversion_table *lpat_table,
     int raw)
{
 int i, delta_temp, delta_raw, temp;
 struct acpi_lpat *lpat = lpat_table->lpat;

 for (i = 0; i < lpat_table->lpat_count - 1; i++) {
  if ((raw >= lpat[i].raw && raw <= lpat[i+1].raw) ||
      (raw <= lpat[i].raw && raw >= lpat[i+1].raw))
   break;
 }

 if (i == lpat_table->lpat_count - 1)
  return -ENOENT;

 delta_temp = lpat[i+1].temp - lpat[i].temp;
 delta_raw = lpat[i+1].raw - lpat[i].raw;
 temp = lpat[i].temp + (raw - lpat[i].raw) * delta_temp / delta_raw;

 return temp;
}
