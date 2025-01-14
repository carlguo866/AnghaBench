
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* merge_type_attributes ) (scalar_t__,scalar_t__) ;} ;


 scalar_t__ BLOCK_POINTER_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_PTRMEM_CLASS_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_POINTED_TO_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTR_TO_MEMBER_P (scalar_t__) ;
 scalar_t__ build_block_pointer_type (scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ build_ptrmem_type (int ,scalar_t__) ;
 scalar_t__ build_type_attribute_variant (scalar_t__,scalar_t__) ;
 scalar_t__ cp_build_qualified_type (scalar_t__,int) ;
 int cp_type_quals (scalar_t__) ;
 int pedwarn (char*,char const*,scalar_t__,scalar_t__) ;
 scalar_t__ same_type_ignoring_top_level_qualifiers_p (scalar_t__,scalar_t__) ;
 int same_type_p (int ,int ) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 TYPE_1__ targetm ;
 scalar_t__ void_type_node ;

__attribute__((used)) static tree
composite_pointer_type_r (tree t1, tree t2, const char* location)
{
  tree pointee1;
  tree pointee2;
  tree result_type;
  tree attributes;



  if (TREE_CODE (t1) == POINTER_TYPE || TREE_CODE (t1) == BLOCK_POINTER_TYPE)
    {
      pointee1 = TREE_TYPE (t1);
      pointee2 = TREE_TYPE (t2);
    }
  else
    {
      pointee1 = TYPE_PTRMEM_POINTED_TO_TYPE (t1);
      pointee2 = TYPE_PTRMEM_POINTED_TO_TYPE (t2);
    }
  if (same_type_ignoring_top_level_qualifiers_p (pointee1, pointee2))
    result_type = pointee1;
  else if ((TREE_CODE (pointee1) == POINTER_TYPE
     && TREE_CODE (pointee2) == POINTER_TYPE)
    || (TYPE_PTR_TO_MEMBER_P (pointee1)
        && TYPE_PTR_TO_MEMBER_P (pointee2)))
    result_type = composite_pointer_type_r (pointee1, pointee2, location);
  else
    {
      pedwarn ("%s between distinct pointer types %qT and %qT "
        "lacks a cast",
        location, t1, t2);
      result_type = void_type_node;
    }
  result_type = cp_build_qualified_type (result_type,
      (cp_type_quals (pointee1)
       | cp_type_quals (pointee2)));


  if (TYPE_PTR_TO_MEMBER_P (t1))
    {
      if (!same_type_p (TYPE_PTRMEM_CLASS_TYPE (t1),
   TYPE_PTRMEM_CLASS_TYPE (t2)))
 pedwarn ("%s between distinct pointer types %qT and %qT "
   "lacks a cast",
   location, t1, t2);
      result_type = build_ptrmem_type (TYPE_PTRMEM_CLASS_TYPE (t1),
           result_type);
    }

  else if (TREE_CODE (t1) == BLOCK_POINTER_TYPE
     && result_type != void_type_node)
    result_type = build_block_pointer_type (result_type);
  else
    result_type = build_pointer_type (result_type);



  attributes = (*targetm.merge_type_attributes) (t1, t2);
  return build_type_attribute_variant (result_type, attributes);
}
