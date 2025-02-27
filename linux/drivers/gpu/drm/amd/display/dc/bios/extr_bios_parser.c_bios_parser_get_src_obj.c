
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int uint16_t ;
struct graphics_object_id {int dummy; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef int ATOM_OBJECT ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_OK ;
 int BREAK_TO_DEBUGGER () ;
 int * get_bios_object (struct bios_parser*,struct graphics_object_id) ;
 size_t get_src_obj_list (struct bios_parser*,int *,int **) ;
 struct graphics_object_id object_id_from_bios_object_id (int ) ;

__attribute__((used)) static enum bp_result bios_parser_get_src_obj(struct dc_bios *dcb,
 struct graphics_object_id object_id, uint32_t index,
 struct graphics_object_id *src_object_id)
{
 uint32_t number;
 uint16_t *id;
 ATOM_OBJECT *object;
 struct bios_parser *bp = BP_FROM_DCB(dcb);

 if (!src_object_id)
  return BP_RESULT_BADINPUT;

 object = get_bios_object(bp, object_id);

 if (!object) {
  BREAK_TO_DEBUGGER();
  return BP_RESULT_BADINPUT;
 }

 number = get_src_obj_list(bp, object, &id);

 if (number <= index)
  return BP_RESULT_BADINPUT;

 *src_object_id = object_id_from_bios_object_id(id[index]);

 return BP_RESULT_OK;
}
