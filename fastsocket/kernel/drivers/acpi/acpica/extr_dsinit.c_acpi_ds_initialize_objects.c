
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int signature; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_init_walk_info {scalar_t__ op_region_count; scalar_t__ method_count; scalar_t__ device_count; scalar_t__ object_count; int owner_id; int table_index; } ;
typedef int acpi_status ;
typedef int acpi_owner_id ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int ACPI_NS_WALK_UNLOCK ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ds_init_one_object ;
 int acpi_get_table_by_index (int ,struct acpi_table_header**) ;
 int acpi_ns_walk_namespace (int ,struct acpi_namespace_node*,int ,int ,int ,struct acpi_init_walk_info*,int *) ;
 int acpi_tb_get_owner_id (int ,int *) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ds_initialize_objects ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_initialize_objects(u32 table_index,
      struct acpi_namespace_node * start_node)
{
 acpi_status status;
 struct acpi_init_walk_info info;
 struct acpi_table_header *table;
 acpi_owner_id owner_id;

 ACPI_FUNCTION_TRACE(ds_initialize_objects);

 status = acpi_tb_get_owner_id(table_index, &owner_id);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "**** Starting initialization of namespace objects ****\n"));
 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT, "Parsing all Control Methods:"));

 info.method_count = 0;
 info.op_region_count = 0;
 info.object_count = 0;
 info.device_count = 0;
 info.table_index = table_index;
 info.owner_id = owner_id;



 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }





 status =
     acpi_ns_walk_namespace(ACPI_TYPE_ANY, start_node, ACPI_UINT32_MAX,
       ACPI_NS_WALK_UNLOCK, acpi_ds_init_one_object,
       &info, ((void*)0));
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "During WalkNamespace"));
 }
 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);

 status = acpi_get_table_by_index(table_index, &table);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "\nTable [%4.4s](id %4.4X) - %hd Objects with %hd Devices %hd Methods %hd Regions\n",
         table->signature, owner_id, info.object_count,
         info.device_count, info.method_count,
         info.op_region_count));

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "%hd Methods, %hd Regions\n", info.method_count,
     info.op_region_count));

 return_ACPI_STATUS(AE_OK);
}
