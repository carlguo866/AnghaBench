
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct acpi_walk_state {TYPE_1__* local_variables; struct acpi_namespace_node* method_node; } ;
struct acpi_namespace_node {scalar_t__ type; } ;
struct TYPE_2__ {union acpi_operand_object* object; } ;


 size_t ACPI_METHOD_NUM_LOCALS ;
 scalar_t__ ACPI_TYPE_METHOD ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_db_display_internal_object (union acpi_operand_object*,struct acpi_walk_state*) ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_os_printf (char*,...) ;
 size_t acpi_ut_get_node_name (struct acpi_namespace_node*) ;

void acpi_db_decode_locals(struct acpi_walk_state *walk_state)
{
 u32 i;
 union acpi_operand_object *obj_desc;
 struct acpi_namespace_node *node;
 u8 display_locals = FALSE;

 node = walk_state->method_node;



 if (node == acpi_gbl_root_node) {
  return;
 }

 if (!node) {
  acpi_os_printf
      ("No method node (Executing subtree for buffer or opregion)\n");
  return;
 }

 if (node->type != ACPI_TYPE_METHOD) {
  acpi_os_printf("Executing subtree for Buffer/Package/Region\n");
  return;
 }



 for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++) {
  obj_desc = walk_state->local_variables[i].object;
  if (obj_desc) {
   display_locals = TRUE;
   break;
  }
 }



 if (display_locals) {
  acpi_os_printf
      ("\nInitialized Local Variables for Method [%4.4s]:\n",
       acpi_ut_get_node_name(node));

  for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++) {
   obj_desc = walk_state->local_variables[i].object;
   if (obj_desc) {
    acpi_os_printf("  Local%X: ", i);
    acpi_db_display_internal_object(obj_desc,
        walk_state);
   }
  }
 } else {
  acpi_os_printf
      ("No Local Variables are initialized for Method [%4.4s]\n",
       acpi_ut_get_node_name(node));
 }
}
