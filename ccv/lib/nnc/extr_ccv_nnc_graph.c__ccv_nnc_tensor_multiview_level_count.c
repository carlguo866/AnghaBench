
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_5__ {int kind; int repeat; } ;
typedef TYPE_1__ ccv_nnc_tensor_multiview_t ;


 int CCV_IS_TENSOR_MULTIVIEW (TYPE_1__ const* const) ;
 int ** CCV_NNC_MULTIVIEW_DATA (TYPE_1__ const* const) ;
 int * CCV_NNC_TENSOR_PLACEHOLDER ;
 int ccv_max (int,int) ;

__attribute__((used)) static int _ccv_nnc_tensor_multiview_level_count(const ccv_nnc_tensor_multiview_t* const mv)
{
 if (!CCV_IS_TENSOR_MULTIVIEW(mv))
  return 1;
 const int count = mv->kind + mv->repeat;
 int i, c = 0;
 for (i = 0; i < count; i++)
 {
  ccv_nnc_tensor_t* tv = CCV_NNC_MULTIVIEW_DATA(mv)[i];
  if (tv == CCV_NNC_TENSOR_PLACEHOLDER)
   c = ccv_max(c, 1);
  else
   c = ccv_max(c, _ccv_nnc_tensor_multiview_level_count((ccv_nnc_tensor_multiview_t*)tv));
 }
 return c + 1;
}
