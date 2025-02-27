
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef union acpi_object {int dummy; } acpi_object ;
typedef union acpi_generic_state {int dummy; } acpi_generic_state ;
typedef int u32 ;
struct acpi_update_state {int dummy; } ;
struct acpi_thread_state {int dummy; } ;
struct acpi_scope_state {int dummy; } ;
struct acpi_result_values {int dummy; } ;
struct acpi_pscope_state {int dummy; } ;
struct acpi_pkg_state {int dummy; } ;
struct acpi_parse_obj_named {int dummy; } ;
struct acpi_parse_obj_common {int dummy; } ;
struct acpi_parse_obj_asl {int dummy; } ;
struct acpi_object_thermal_zone {int dummy; } ;
struct acpi_object_string {int dummy; } ;
struct acpi_object_region_field {int dummy; } ;
struct acpi_object_region {int dummy; } ;
struct acpi_object_reference {int dummy; } ;
struct acpi_object_processor {int dummy; } ;
struct acpi_object_power_resource {int dummy; } ;
struct acpi_object_package {int dummy; } ;
struct acpi_object_notify_handler {int dummy; } ;
struct acpi_object_mutex {int dummy; } ;
struct acpi_object_method {int dummy; } ;
struct acpi_object_integer {int dummy; } ;
struct acpi_object_index_field {int dummy; } ;
struct acpi_object_extra {int dummy; } ;
struct acpi_object_event {int dummy; } ;
struct acpi_object_device {int dummy; } ;
struct acpi_object_data {int dummy; } ;
struct acpi_object_common {int dummy; } ;
struct acpi_object_buffer_field {int dummy; } ;
struct acpi_object_buffer {int dummy; } ;
struct acpi_object_bank_field {int dummy; } ;
struct acpi_object_addr_handler {int dummy; } ;
struct acpi_notify_info {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_control_state {int dummy; } ;
struct acpi_common_state {int dummy; } ;
typedef int acpi_status ;
struct TYPE_2__ {int use_count; } ;


 int ACPI_NUM_MUTEX ;
 int ACPI_PTR_DIFF (int ,int ) ;
 int ACPI_TYPE_NOT_FOUND ;
 int ACPI_TYPE_NS_NODE_MAX ;
 int AE_OK ;







 int acpi_db_count_namespace_objects () ;
 int acpi_db_list_info (int ) ;
 int acpi_db_match_argument (char*,int ) ;
 int acpi_db_stat_types ;
 int acpi_gbl_deepest_nesting ;
 int acpi_gbl_entry_stack_pointer ;
 int acpi_gbl_global_list ;
 int acpi_gbl_lowest_stack_pointer ;
 TYPE_1__* acpi_gbl_mutex_info ;
 int * acpi_gbl_node_type_count ;
 int acpi_gbl_node_type_count_misc ;
 int acpi_gbl_ns_lookup_count ;
 int acpi_gbl_ns_node_list ;
 int acpi_gbl_num_nodes ;
 int acpi_gbl_num_objects ;
 int * acpi_gbl_obj_type_count ;
 int acpi_gbl_obj_type_count_misc ;
 int acpi_gbl_operand_cache ;
 int acpi_gbl_ps_find_count ;
 int acpi_gbl_ps_node_cache ;
 int acpi_gbl_ps_node_ext_cache ;
 int acpi_gbl_state_cache ;
 int acpi_os_printf (char*,...) ;
 int acpi_ut_dump_allocation_info () ;
 int acpi_ut_get_mutex_name (int) ;
 int acpi_ut_get_type_name (int) ;
 int acpi_ut_strupr (char*) ;

acpi_status acpi_db_display_statistics(char *type_arg)
{
 u32 i;
 u32 temp;

 acpi_ut_strupr(type_arg);
 temp = acpi_db_match_argument(type_arg, acpi_db_stat_types);
 if (temp == ACPI_TYPE_NOT_FOUND) {
  acpi_os_printf("Invalid or unsupported argument\n");
  return (AE_OK);
 }

 switch (temp) {
 case 134:




  break;

 case 128:

  acpi_os_printf("ACPI Table Information (not implemented):\n\n");
  break;

 case 131:

  acpi_db_count_namespace_objects();

  acpi_os_printf
      ("\nObjects defined in the current namespace:\n\n");

  acpi_os_printf("%16.16s %10.10s %10.10s\n",
          "ACPI_TYPE", "NODES", "OBJECTS");

  for (i = 0; i < ACPI_TYPE_NS_NODE_MAX; i++) {
   acpi_os_printf("%16.16s %10u %10u\n",
           acpi_ut_get_type_name(i),
           acpi_gbl_node_type_count[i],
           acpi_gbl_obj_type_count[i]);
  }

  acpi_os_printf("%16.16s %10u %10u\n", "Misc/Unknown",
          acpi_gbl_node_type_count_misc,
          acpi_gbl_obj_type_count_misc);

  acpi_os_printf("%16.16s %10u %10u\n", "TOTALS:",
          acpi_gbl_num_nodes, acpi_gbl_num_objects);
  break;

 case 133:
  break;

 case 132:

  acpi_os_printf("\nMiscellaneous Statistics:\n\n");
  acpi_os_printf("%-28s:     %7u\n", "Calls to AcpiPsFind",
          acpi_gbl_ps_find_count);
  acpi_os_printf("%-28s:     %7u\n", "Calls to AcpiNsLookup",
          acpi_gbl_ns_lookup_count);

  acpi_os_printf("\nMutex usage:\n\n");
  for (i = 0; i < ACPI_NUM_MUTEX; i++) {
   acpi_os_printf("%-28s:     %7u\n",
           acpi_ut_get_mutex_name(i),
           acpi_gbl_mutex_info[i].use_count);
  }
  break;

 case 130:

  acpi_os_printf("\nInternal object sizes:\n\n");

  acpi_os_printf("Common         %3d\n",
          (u32)sizeof(struct acpi_object_common));
  acpi_os_printf("Number         %3d\n",
          (u32)sizeof(struct acpi_object_integer));
  acpi_os_printf("String         %3d\n",
          (u32)sizeof(struct acpi_object_string));
  acpi_os_printf("Buffer         %3d\n",
          (u32)sizeof(struct acpi_object_buffer));
  acpi_os_printf("Package        %3d\n",
          (u32)sizeof(struct acpi_object_package));
  acpi_os_printf("BufferField    %3d\n",
          (u32)sizeof(struct acpi_object_buffer_field));
  acpi_os_printf("Device         %3d\n",
          (u32)sizeof(struct acpi_object_device));
  acpi_os_printf("Event          %3d\n",
          (u32)sizeof(struct acpi_object_event));
  acpi_os_printf("Method         %3d\n",
          (u32)sizeof(struct acpi_object_method));
  acpi_os_printf("Mutex          %3d\n",
          (u32)sizeof(struct acpi_object_mutex));
  acpi_os_printf("Region         %3d\n",
          (u32)sizeof(struct acpi_object_region));
  acpi_os_printf("PowerResource  %3d\n",
          (u32)sizeof(struct acpi_object_power_resource));
  acpi_os_printf("Processor      %3d\n",
          (u32)sizeof(struct acpi_object_processor));
  acpi_os_printf("ThermalZone    %3d\n",
          (u32)sizeof(struct acpi_object_thermal_zone));
  acpi_os_printf("RegionField    %3d\n",
          (u32)sizeof(struct acpi_object_region_field));
  acpi_os_printf("BankField      %3d\n",
          (u32)sizeof(struct acpi_object_bank_field));
  acpi_os_printf("IndexField     %3d\n",
          (u32)sizeof(struct acpi_object_index_field));
  acpi_os_printf("Reference      %3d\n",
          (u32)sizeof(struct acpi_object_reference));
  acpi_os_printf("Notify         %3d\n",
          (u32)sizeof(struct acpi_object_notify_handler));
  acpi_os_printf("AddressSpace   %3d\n",
          (u32)sizeof(struct acpi_object_addr_handler));
  acpi_os_printf("Extra          %3d\n",
          (u32)sizeof(struct acpi_object_extra));
  acpi_os_printf("Data           %3d\n",
          (u32)sizeof(struct acpi_object_data));

  acpi_os_printf("\n");

  acpi_os_printf("ParseObject    %3d\n",
          (u32)sizeof(struct acpi_parse_obj_common));
  acpi_os_printf("ParseObjectNamed %3d\n",
          (u32)sizeof(struct acpi_parse_obj_named));
  acpi_os_printf("ParseObjectAsl %3d\n",
          (u32)sizeof(struct acpi_parse_obj_asl));
  acpi_os_printf("OperandObject  %3d\n",
          (u32)sizeof(union acpi_operand_object));
  acpi_os_printf("NamespaceNode  %3d\n",
          (u32)sizeof(struct acpi_namespace_node));
  acpi_os_printf("AcpiObject     %3d\n",
          (u32)sizeof(union acpi_object));

  acpi_os_printf("\n");

  acpi_os_printf("Generic State  %3d\n",
          (u32)sizeof(union acpi_generic_state));
  acpi_os_printf("Common State   %3d\n",
          (u32)sizeof(struct acpi_common_state));
  acpi_os_printf("Control State  %3d\n",
          (u32)sizeof(struct acpi_control_state));
  acpi_os_printf("Update State   %3d\n",
          (u32)sizeof(struct acpi_update_state));
  acpi_os_printf("Scope State    %3d\n",
          (u32)sizeof(struct acpi_scope_state));
  acpi_os_printf("Parse Scope    %3d\n",
          (u32)sizeof(struct acpi_pscope_state));
  acpi_os_printf("Package State  %3d\n",
          (u32)sizeof(struct acpi_pkg_state));
  acpi_os_printf("Thread State   %3d\n",
          (u32)sizeof(struct acpi_thread_state));
  acpi_os_printf("Result Values  %3d\n",
          (u32)sizeof(struct acpi_result_values));
  acpi_os_printf("Notify Info    %3d\n",
          (u32)sizeof(struct acpi_notify_info));
  break;

 case 129:
  break;

 default:

  break;
 }

 acpi_os_printf("\n");
 return (AE_OK);
}
