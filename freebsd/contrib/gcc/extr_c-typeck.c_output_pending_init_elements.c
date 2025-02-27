
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct init_node {scalar_t__ purpose; struct init_node* parent; struct init_node* right; struct init_node* left; int value; } ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ bit_position (scalar_t__) ;
 struct init_node* constructor_pending_elts ;
 scalar_t__ constructor_type ;
 scalar_t__ constructor_unfilled_fields ;
 scalar_t__ constructor_unfilled_index ;
 int output_init_element (int ,int,int ,scalar_t__,int ) ;
 scalar_t__ tree_int_cst_equal (scalar_t__,scalar_t__) ;
 scalar_t__ tree_int_cst_lt (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
output_pending_init_elements (int all)
{
  struct init_node *elt = constructor_pending_elts;
  tree next;

 retry:






  next = 0;
  while (elt)
    {
      if (TREE_CODE (constructor_type) == ARRAY_TYPE)
 {
   if (tree_int_cst_equal (elt->purpose,
      constructor_unfilled_index))
     output_init_element (elt->value, 1,
     TREE_TYPE (constructor_type),
     constructor_unfilled_index, 0);
   else if (tree_int_cst_lt (constructor_unfilled_index,
        elt->purpose))
     {

       if (elt->left)
  elt = elt->left;
       else
  {


    next = elt->purpose;
    break;
  }
     }
   else
     {

       if (elt->right)
  elt = elt->right;
       else
  {


    while (elt->parent && elt->parent->right == elt)
      elt = elt->parent;
    elt = elt->parent;
    if (elt && tree_int_cst_lt (constructor_unfilled_index,
           elt->purpose))
      {
        next = elt->purpose;
        break;
      }
  }
     }
 }
      else if (TREE_CODE (constructor_type) == RECORD_TYPE
        || TREE_CODE (constructor_type) == UNION_TYPE)
 {
   tree ctor_unfilled_bitpos, elt_bitpos;


   if (constructor_unfilled_fields == 0)
     break;

   ctor_unfilled_bitpos = bit_position (constructor_unfilled_fields);
   elt_bitpos = bit_position (elt->purpose);


   if (tree_int_cst_equal (elt_bitpos, ctor_unfilled_bitpos))
     {
       constructor_unfilled_fields = elt->purpose;
       output_init_element (elt->value, 1, TREE_TYPE (elt->purpose),
       elt->purpose, 0);
     }
   else if (tree_int_cst_lt (ctor_unfilled_bitpos, elt_bitpos))
     {

       if (elt->left)
  elt = elt->left;
       else
  {


    next = elt->purpose;
    break;
  }
     }
   else
     {

       if (elt->right)
  elt = elt->right;
       else
  {


    while (elt->parent && elt->parent->right == elt)
      elt = elt->parent;
    elt = elt->parent;
    if (elt
        && (tree_int_cst_lt (ctor_unfilled_bitpos,
        bit_position (elt->purpose))))
      {
        next = elt->purpose;
        break;
      }
  }
     }
 }
    }



  if (!(all && next != 0))
    return;



  if (TREE_CODE (constructor_type) == RECORD_TYPE
      || TREE_CODE (constructor_type) == UNION_TYPE)
    constructor_unfilled_fields = next;
  else if (TREE_CODE (constructor_type) == ARRAY_TYPE)
    constructor_unfilled_index = next;



  goto retry;
}
