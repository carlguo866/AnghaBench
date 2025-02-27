
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_EXTERN_C_P (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ build_overload (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
merge_functions (tree s1, tree s2)
{
  for (; s2; s2 = OVL_NEXT (s2))
    {
      tree fn2 = OVL_CURRENT (s2);
      tree fns1;

      for (fns1 = s1; fns1; fns1 = OVL_NEXT (fns1))
 {
   tree fn1 = OVL_CURRENT (fns1);





   if (fn1 == fn2
       || (DECL_EXTERN_C_P (fn1) && DECL_EXTERN_C_P (fn2)
    && DECL_NAME (fn1) == DECL_NAME (fn2)))
     break;
 }


      if (!fns1)
 s1 = build_overload (fn2, s1);
    }
  return s1;
}
