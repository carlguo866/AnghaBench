
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;


 int EIO ;
 int METHOD_WIMAX ;
 int pr_warn (char*,int) ;
 scalar_t__ write_acpi_int (int ,int ,int) ;

__attribute__((used)) static int asus_wimax_set(struct asus_laptop *asus, int status)
{
 if (write_acpi_int(asus->handle, METHOD_WIMAX, !!status)) {
  pr_warn("Error setting wimax status to %d\n", status);
  return -EIO;
 }
 return 0;
}
