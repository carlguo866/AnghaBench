
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int A_Indices ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int is_slice ;
 int lidx ;
 int uidx ;

__attribute__((used)) static bool
_equalAIndices(const A_Indices *a, const A_Indices *b)
{
 COMPARE_SCALAR_FIELD(is_slice);
 COMPARE_NODE_FIELD(lidx);
 COMPARE_NODE_FIELD(uidx);

 return 1;
}
