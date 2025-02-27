
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct acpi_generic_address {scalar_t__ space_id; int bit_width; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;
typedef int acpi_io_address ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_DB_IO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int acpi_hw_read_port (int ,scalar_t__*,int ) ;
 int acpi_hw_validate_register (struct acpi_generic_address*,int,scalar_t__*) ;
 int acpi_os_read_memory (int ,scalar_t__*,int ) ;
 int acpi_ut_get_region_name (scalar_t__) ;
 int hw_read ;

acpi_status acpi_hw_read(u32 *value, struct acpi_generic_address *reg)
{
 u64 address;
 u64 value64;
 acpi_status status;

 ACPI_FUNCTION_NAME(hw_read);



 status = acpi_hw_validate_register(reg, 32, &address);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 *value = 0;





 if (reg->space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY) {
  status = acpi_os_read_memory((acpi_physical_address)
          address, &value64, reg->bit_width);

  *value = (u32)value64;
 } else {

  status = acpi_hw_read_port((acpi_io_address)
        address, value, reg->bit_width);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_IO,
     "Read:  %8.8X width %2d from %8.8X%8.8X (%s)\n",
     *value, reg->bit_width, ACPI_FORMAT_UINT64(address),
     acpi_ut_get_region_name(reg->space_id)));

 return (status);
}
