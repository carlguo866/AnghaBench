
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {char* (* invalid_arg_for_unprototyped_fn ) (scalar_t__,scalar_t__,scalar_t__) ;scalar_t__ (* promote_prototypes ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ BLOCK_POINTER_TYPE ;
 int COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ COMPLEX_TYPE ;
 int DECIMAL_FLOAT_MODE_P (int ) ;
 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;
 int NULL_TREE ;
 int OPT_Wconversion ;
 scalar_t__ REAL_TYPE ;
 int STRIP_TYPE_NOPS (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 unsigned int TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ convert (scalar_t__,scalar_t__) ;
 scalar_t__ convert_for_assignment (scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ default_conversion (scalar_t__) ;
 scalar_t__ dfloat128_type_node ;
 scalar_t__ dfloat32_type_node ;
 scalar_t__ dfloat64_type_node ;
 scalar_t__ double_type_node ;
 int error (char const*,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ float_type_node ;
 int ic_argpass ;
 scalar_t__ int_fits_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ integer_type_node ;
 scalar_t__ nreverse (scalar_t__) ;
 scalar_t__ objc_message_selector () ;
 scalar_t__ require_complete_type (scalar_t__) ;
 scalar_t__ stub1 (scalar_t__) ;
 char* stub2 (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_2__ targetm ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;
 scalar_t__ void_type_node ;
 scalar_t__ warn_conversion ;
 scalar_t__ warn_traditional ;
 int warning (int ,char*,int,scalar_t__,...) ;

__attribute__((used)) static tree
convert_arguments (tree typelist, tree values, tree function, tree fundecl)
{
  tree typetail, valtail;
  tree result = ((void*)0);
  int parmnum;
  tree selector;



  if (TREE_CODE (function) == ADDR_EXPR
      && TREE_CODE (TREE_OPERAND (function, 0)) == FUNCTION_DECL)
    function = TREE_OPERAND (function, 0);


  selector = objc_message_selector ();




  for (valtail = values, typetail = typelist, parmnum = 0;
       valtail;
       valtail = TREE_CHAIN (valtail), parmnum++)
    {
      tree type = typetail ? TREE_VALUE (typetail) : 0;
      tree val = TREE_VALUE (valtail);
      tree rname = function;
      int argnum = parmnum + 1;
      const char *invalid_func_diag;

      if (type == void_type_node)
 {

    if (TREE_CODE (TREE_TYPE (function)) == BLOCK_POINTER_TYPE)
     {
       error ("too many arguments to block call");
       break;
     }


   error ("too many arguments to function %qE", selector ? selector
        : function);

   break;
 }

      if (selector && argnum > 2)
 {
   rname = selector;
   argnum -= 2;
 }

      STRIP_TYPE_NOPS (val);

      val = require_complete_type (val);

      if (type != 0)
 {

   tree parmval;

   if (type == error_mark_node || !COMPLETE_TYPE_P (type))
     {
       error ("type of formal parameter %d is incomplete", parmnum + 1);
       parmval = val;
     }
   else
     {


       if (warn_conversion || warn_traditional)
  {
    unsigned int formal_prec = TYPE_PRECISION (type);

    if (INTEGRAL_TYPE_P (type)
        && TREE_CODE (TREE_TYPE (val)) == REAL_TYPE)
      warning (0, "passing argument %d of %qE as integer "
        "rather than floating due to prototype",
        argnum, rname);
    if (INTEGRAL_TYPE_P (type)
        && TREE_CODE (TREE_TYPE (val)) == COMPLEX_TYPE)
      warning (0, "passing argument %d of %qE as integer "
        "rather than complex due to prototype",
        argnum, rname);
    else if (TREE_CODE (type) == COMPLEX_TYPE
      && TREE_CODE (TREE_TYPE (val)) == REAL_TYPE)
      warning (0, "passing argument %d of %qE as complex "
        "rather than floating due to prototype",
        argnum, rname);
    else if (TREE_CODE (type) == REAL_TYPE
      && INTEGRAL_TYPE_P (TREE_TYPE (val)))
      warning (0, "passing argument %d of %qE as floating "
        "rather than integer due to prototype",
        argnum, rname);
    else if (TREE_CODE (type) == COMPLEX_TYPE
      && INTEGRAL_TYPE_P (TREE_TYPE (val)))
      warning (0, "passing argument %d of %qE as complex "
        "rather than integer due to prototype",
        argnum, rname);
    else if (TREE_CODE (type) == REAL_TYPE
      && TREE_CODE (TREE_TYPE (val)) == COMPLEX_TYPE)
      warning (0, "passing argument %d of %qE as floating "
        "rather than complex due to prototype",
        argnum, rname);



    else if (TREE_CODE (type) == REAL_TYPE
      && TREE_CODE (TREE_TYPE (val)) == REAL_TYPE)
      {


        if (formal_prec == TYPE_PRECISION (float_type_node)
     && type != dfloat32_type_node)
   warning (0, "passing argument %d of %qE as %<float%> "
     "rather than %<double%> due to prototype",
     argnum, rname);





         else if (type != TREE_TYPE (val)
          && (type == dfloat32_type_node
       || type == dfloat64_type_node
       || type == dfloat128_type_node
       || TREE_TYPE (val) == dfloat32_type_node
       || TREE_TYPE (val) == dfloat64_type_node
       || TREE_TYPE (val) == dfloat128_type_node)
          && (formal_prec
       <= TYPE_PRECISION (TREE_TYPE (val))
       || (type == dfloat128_type_node
           && (TREE_TYPE (val)
        != dfloat64_type_node
        && (TREE_TYPE (val)
            != dfloat32_type_node)))
       || (type == dfloat64_type_node
           && (TREE_TYPE (val)
        != dfloat32_type_node))))
   warning (0, "passing argument %d of %qE as %qT "
     "rather than %qT due to prototype",
     argnum, rname, type, TREE_TYPE (val));

      }



    else if (warn_conversion && INTEGRAL_TYPE_P (type)
      && INTEGRAL_TYPE_P (TREE_TYPE (val)))
      {
        tree would_have_been = default_conversion (val);
        tree type1 = TREE_TYPE (would_have_been);

        if (TREE_CODE (type) == ENUMERAL_TYPE
     && (TYPE_MAIN_VARIANT (type)
         == TYPE_MAIN_VARIANT (TREE_TYPE (val))))


   ;
        else if (formal_prec != TYPE_PRECISION (type1))
   warning (OPT_Wconversion, "passing argument %d of %qE "
     "with different width due to prototype",
     argnum, rname);
        else if (TYPE_UNSIGNED (type) == TYPE_UNSIGNED (type1))
   ;



        else if (TREE_CODE (type) == ENUMERAL_TYPE)
   ;
        else if (TREE_CODE (val) == INTEGER_CST
          && int_fits_type_p (val, type))


   ;




        else if (TYPE_PRECISION (TREE_TYPE (val)) < TYPE_PRECISION (type)
          && TYPE_UNSIGNED (TREE_TYPE (val)))
   ;
        else if (TYPE_UNSIGNED (type))
   warning (OPT_Wconversion, "passing argument %d of %qE "
     "as unsigned due to prototype",
     argnum, rname);
        else
   warning (OPT_Wconversion, "passing argument %d of %qE "
     "as signed due to prototype", argnum, rname);
      }
  }

       parmval = convert_for_assignment (type, val, ic_argpass,
      fundecl, function,
      parmnum + 1);

       if (targetm.calls.promote_prototypes (fundecl ? TREE_TYPE (fundecl) : 0)
    && INTEGRAL_TYPE_P (type)
    && (TYPE_PRECISION (type) < TYPE_PRECISION (integer_type_node)))
  parmval = default_conversion (parmval);
     }
   result = tree_cons (NULL_TREE, parmval, result);
 }
      else if (TREE_CODE (TREE_TYPE (val)) == REAL_TYPE
        && (TYPE_PRECISION (TREE_TYPE (val))
     < TYPE_PRECISION (double_type_node))
        && !DECIMAL_FLOAT_MODE_P (TYPE_MODE (TREE_TYPE (val))))

 result = tree_cons (NULL_TREE, convert (double_type_node, val), result);
      else if ((invalid_func_diag =
  targetm.calls.invalid_arg_for_unprototyped_fn (typelist, fundecl, val)))
 {
   error (invalid_func_diag, "");
   return error_mark_node;
 }
      else

 result = tree_cons (NULL_TREE, default_conversion (val), result);

      if (typetail)
 typetail = TREE_CHAIN (typetail);
    }

  if (typetail != 0 && TREE_VALUE (typetail) != void_type_node)
    {

      if (TREE_CODE (TREE_TYPE (function)) == BLOCK_POINTER_TYPE)
  error ("too few arguments to block %qE", function);
      else
  error ("too few arguments to function %qE", function);

      return error_mark_node;
    }

  return nreverse (result);
}
