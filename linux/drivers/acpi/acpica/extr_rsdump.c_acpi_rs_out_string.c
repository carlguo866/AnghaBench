
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_os_printf (char*,...) ;

__attribute__((used)) static void acpi_rs_out_string(const char *title, const char *value)
{

 acpi_os_printf("%27s : %s", title, value);
 if (!*value) {
  acpi_os_printf("[NULL NAMESTRING]");
 }
 acpi_os_printf("\n");
}
