
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef int u64 ;
typedef size_t u32 ;
struct acpi_walk_state {TYPE_3__* local_variables; TYPE_2__* arguments; } ;
struct acpi_namespace_node {scalar_t__ type; union acpi_operand_object* object; } ;
typedef int acpi_status ;
struct TYPE_6__ {union acpi_operand_object* object; } ;
struct TYPE_5__ {union acpi_operand_object* object; } ;


 int ACPI_FAILURE (int ) ;
 size_t ACPI_METHOD_MAX_ARG ;
 size_t ACPI_METHOD_MAX_LOCAL ;
 int ACPI_REFCLASS_ARG ;
 int ACPI_REFCLASS_LOCAL ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 struct acpi_namespace_node* acpi_db_convert_to_node (char*) ;
 int acpi_db_display_internal_object (union acpi_operand_object*,struct acpi_walk_state*) ;
 struct acpi_walk_state* acpi_ds_get_current_walk_state (int ) ;
 int acpi_ds_store_object_to_local (int ,size_t,union acpi_operand_object*,struct acpi_walk_state*) ;
 int acpi_gbl_current_walk_list ;
 int acpi_os_printf (char*,...) ;
 union acpi_operand_object* acpi_ut_create_integer_object (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int acpi_ut_strupr (char*) ;
 size_t strtoul (char*,int *,int) ;

void acpi_db_set_method_data(char *type_arg, char *index_arg, char *value_arg)
{
 char type;
 u32 index;
 u32 value;
 struct acpi_walk_state *walk_state;
 union acpi_operand_object *obj_desc;
 acpi_status status;
 struct acpi_namespace_node *node;



 acpi_ut_strupr(type_arg);
 type = type_arg[0];
 if ((type != 'L') && (type != 'A') && (type != 'N')) {
  acpi_os_printf("Invalid SET operand: %s\n", type_arg);
  return;
 }

 value = strtoul(value_arg, ((void*)0), 16);

 if (type == 'N') {
  node = acpi_db_convert_to_node(index_arg);
  if (!node) {
   return;
  }

  if (node->type != ACPI_TYPE_INTEGER) {
   acpi_os_printf("Can only set Integer nodes\n");
   return;
  }
  obj_desc = node->object;
  obj_desc->integer.value = value;
  return;
 }



 index = strtoul(index_arg, ((void*)0), 16);

 walk_state = acpi_ds_get_current_walk_state(acpi_gbl_current_walk_list);
 if (!walk_state) {
  acpi_os_printf("There is no method currently executing\n");
  return;
 }



 obj_desc = acpi_ut_create_integer_object((u64)value);
 if (!obj_desc) {
  acpi_os_printf("Could not create an internal object\n");
  return;
 }



 switch (type) {
 case 'A':



  if (index > ACPI_METHOD_MAX_ARG) {
   acpi_os_printf("Arg%u - Invalid argument name\n",
           index);
   goto cleanup;
  }

  status = acpi_ds_store_object_to_local(ACPI_REFCLASS_ARG,
             index, obj_desc,
             walk_state);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }

  obj_desc = walk_state->arguments[index].object;

  acpi_os_printf("Arg%u: ", index);
  acpi_db_display_internal_object(obj_desc, walk_state);
  break;

 case 'L':



  if (index > ACPI_METHOD_MAX_LOCAL) {
   acpi_os_printf
       ("Local%u - Invalid local variable name\n", index);
   goto cleanup;
  }

  status = acpi_ds_store_object_to_local(ACPI_REFCLASS_LOCAL,
             index, obj_desc,
             walk_state);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }

  obj_desc = walk_state->local_variables[index].object;

  acpi_os_printf("Local%u: ", index);
  acpi_db_display_internal_object(obj_desc, walk_state);
  break;

 default:

  break;
 }

cleanup:
 acpi_ut_remove_reference(obj_desc);
}
