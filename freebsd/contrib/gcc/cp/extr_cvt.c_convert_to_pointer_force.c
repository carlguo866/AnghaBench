
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 int MINUS_EXPR ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int ba_unique ;
 scalar_t__ build_base_path (int,scalar_t__,scalar_t__,int ) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ cp_convert_to_pointer (scalar_t__,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_base (scalar_t__,scalar_t__,int ,int *) ;
 int same_type_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
convert_to_pointer_force (tree type, tree expr)
{
  tree intype = TREE_TYPE (expr);
  enum tree_code form = TREE_CODE (intype);

  if (form == POINTER_TYPE)
    {
      intype = TYPE_MAIN_VARIANT (intype);

      if (TYPE_MAIN_VARIANT (type) != intype
   && TREE_CODE (TREE_TYPE (type)) == RECORD_TYPE
   && IS_AGGR_TYPE (TREE_TYPE (type))
   && IS_AGGR_TYPE (TREE_TYPE (intype))
   && TREE_CODE (TREE_TYPE (intype)) == RECORD_TYPE)
 {
   enum tree_code code = PLUS_EXPR;
   tree binfo;

   binfo = lookup_base (TREE_TYPE (intype), TREE_TYPE (type),
          ba_unique, ((void*)0));
   if (!binfo)
     {
       binfo = lookup_base (TREE_TYPE (type), TREE_TYPE (intype),
       ba_unique, ((void*)0));
       code = MINUS_EXPR;
     }
   if (binfo == error_mark_node)
     return error_mark_node;
   if (binfo)
     {
       expr = build_base_path (code, expr, binfo, 0);
       if (expr == error_mark_node)
   return error_mark_node;

       if (!same_type_p (TREE_TYPE (TREE_TYPE (expr)),
    TREE_TYPE (type)))
  expr = build_nop (type, expr);
       return expr;
     }
 }
    }

  return cp_convert_to_pointer (type, expr, 1);
}
