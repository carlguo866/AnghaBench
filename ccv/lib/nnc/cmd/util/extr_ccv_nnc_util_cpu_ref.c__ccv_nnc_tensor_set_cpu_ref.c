
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float* f32; } ;
struct TYPE_8__ {TYPE_1__ data; int info; } ;
typedef TYPE_2__ ccv_nnc_tensor_view_t ;


 int CCV_IS_TENSOR_VIEW (TYPE_2__* const) ;
 int CCV_NNC_MAX_DIM ;
 int CCV_NNC_MAX_DIM_ALLOC ;
 int assert (int) ;
 int ccv_nnc_tensor_count (int ) ;
 int ccv_nnc_tensor_view_get_dim (TYPE_2__* const,int*) ;
 int ccv_nnc_tensor_view_get_inc (TYPE_2__* const,int*) ;

void _ccv_nnc_tensor_set_cpu_ref(ccv_nnc_tensor_view_t* const a, const float b)
{

 int dim[CCV_NNC_MAX_DIM_ALLOC];
 int ainc[CCV_NNC_MAX_DIM_ALLOC];
 int x;
 if (!CCV_IS_TENSOR_VIEW(a))
 {

  const int tensor_count = ccv_nnc_tensor_count(a->info);
  for (x = 0; x < tensor_count; x++)
   a->data.f32[x] = b;
  return;
 }
 assert(CCV_NNC_MAX_DIM == 2);
 ccv_nnc_tensor_view_get_dim(a, dim);
 ccv_nnc_tensor_view_get_inc(a, ainc);
 int i[CCV_NNC_MAX_DIM + 2];
 float* ap = a->data.f32;
 const int count = dim[2] * dim[3];
 if (ainc[3] == dim[3])
 {

  for (i[0] = 0; i[0] < dim[0]; i[0]++)
  {
   for (i[1] = 0; i[1] < dim[1]; i[1]++)
   {
    for (x = 0; x < count; x++)
     ap[x] = b;
    ap += ainc[2] * ainc[3];
   }
   ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
  }
  return;
 }

 for (i[0] = 0; i[0] < dim[0]; i[0]++)
 {
  for (i[1] = 0; i[1] < dim[1]; i[1]++)
  {
   for (i[2] = 0; i[2] < dim[2]; i[2]++)
   {
    for (x = 0; x < dim[3]; x++)
     ap[x] = b;
    ap += ainc[3];
   }
   ap += (ainc[2] - dim[2]) * ainc[3];
  }
  ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
 }
}
