
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ integer; union acpi_parse_object* arg; } ;
struct TYPE_7__ {int aml_opcode; union acpi_parse_object* next; TYPE_1__ value; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_10__ {int flags; scalar_t__ length; scalar_t__ address; int space_id; } ;
struct TYPE_9__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_5__ region; TYPE_4__ integer; } ;
typedef scalar_t__ u32 ;
struct acpi_walk_state {int num_operands; union acpi_operand_object** operands; } ;
struct TYPE_8__ {int ascii; } ;
struct acpi_namespace_node {TYPE_3__ name; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_physical_address ;
typedef scalar_t__ acpi_adr_space_type ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ;
 int ACPI_WALK_OPERANDS ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_create_operands (struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_ex_resolve_operands (int ,int ,struct acpi_walk_state*) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_ut_add_address_range (int ,scalar_t__,scalar_t__,struct acpi_namespace_node*) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ds_eval_region_operands ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_eval_region_operands(struct acpi_walk_state *walk_state,
        union acpi_parse_object *op)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;
 union acpi_operand_object *operand_desc;
 struct acpi_namespace_node *node;
 union acpi_parse_object *next_op;
 acpi_adr_space_type space_id;

 ACPI_FUNCTION_TRACE_PTR(ds_eval_region_operands, op);





 node = op->common.node;



 next_op = op->common.value.arg;
 space_id = (acpi_adr_space_type)next_op->common.value.integer;



 next_op = next_op->common.next;



 status = acpi_ds_create_operands(walk_state, next_op);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status =
     acpi_ex_resolve_operands(op->common.aml_opcode, ACPI_WALK_OPERANDS,
         walk_state);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 obj_desc = acpi_ns_get_attached_object(node);
 if (!obj_desc) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }





 operand_desc = walk_state->operands[walk_state->num_operands - 1];

 obj_desc->region.length = (u32) operand_desc->integer.value;
 acpi_ut_remove_reference(operand_desc);



 if (!obj_desc->region.length
     && (space_id < ACPI_NUM_PREDEFINED_REGIONS)) {
  ACPI_WARNING((AE_INFO,
         "Operation Region [%4.4s] has zero length (SpaceId %X)",
         node->name.ascii, space_id));
 }





 operand_desc = walk_state->operands[walk_state->num_operands - 2];

 obj_desc->region.address = (acpi_physical_address)
     operand_desc->integer.value;
 acpi_ut_remove_reference(operand_desc);

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
     obj_desc,
     ACPI_FORMAT_UINT64(obj_desc->region.address),
     obj_desc->region.length));

 status = acpi_ut_add_address_range(obj_desc->region.space_id,
        obj_desc->region.address,
        obj_desc->region.length, node);



 obj_desc->region.flags |= AOPOBJ_DATA_VALID;
 return_ACPI_STATUS(status);
}
