
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 struct value* VALUE_ADDRESS (struct value*) ;
 int VALUE_CONTENTS (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int ada_array_arity (int ) ;
 int ada_array_bound (struct value*,int,int) ;
 struct value* allocate_value (struct type*) ;
 int check_typedef (int ) ;
 struct type* desc_base_type (struct type*) ;
 int desc_bound_bitpos (struct type*,int,int) ;
 int desc_bound_bitsize (struct type*,int,int) ;
 struct type* desc_bounds_type (struct type*) ;
 int fat_pntr_bounds_bitpos (struct type*) ;
 int fat_pntr_bounds_bitsize (struct type*) ;
 int fat_pntr_data_bitpos (struct type*) ;
 int fat_pntr_data_bitsize (struct type*) ;
 int modify_general_field (int ,struct value*,int ,int ) ;
 struct value* place_on_stack (struct value*,int *) ;
 struct value* value_addr (struct value*) ;
 struct value* value_as_long (int ) ;

__attribute__((used)) static struct value *
make_array_descriptor (struct type *type, struct value *arr, CORE_ADDR *sp)
{
  struct type *bounds_type = desc_bounds_type (type);
  struct type *desc_type = desc_base_type (type);
  struct value *descriptor = allocate_value (desc_type);
  struct value *bounds = allocate_value (bounds_type);
  CORE_ADDR bounds_addr;
  int i;

  for (i = ada_array_arity (check_typedef (VALUE_TYPE (arr))); i > 0; i -= 1)
    {
      modify_general_field (VALUE_CONTENTS (bounds),
       value_as_long (ada_array_bound (arr, i, 0)),
       desc_bound_bitpos (bounds_type, i, 0),
       desc_bound_bitsize (bounds_type, i, 0));
      modify_general_field (VALUE_CONTENTS (bounds),
       value_as_long (ada_array_bound (arr, i, 1)),
       desc_bound_bitpos (bounds_type, i, 1),
       desc_bound_bitsize (bounds_type, i, 1));
    }

  bounds = place_on_stack (bounds, sp);

  modify_general_field (VALUE_CONTENTS (descriptor),
   arr,
   fat_pntr_data_bitpos (desc_type),
   fat_pntr_data_bitsize (desc_type));
  modify_general_field (VALUE_CONTENTS (descriptor),
   VALUE_ADDRESS (bounds),
   fat_pntr_bounds_bitpos (desc_type),
   fat_pntr_bounds_bitsize (desc_type));

  descriptor = place_on_stack (descriptor, sp);

  if (TYPE_CODE (type) == TYPE_CODE_PTR)
    return value_addr (descriptor);
  else
    return descriptor;
}
