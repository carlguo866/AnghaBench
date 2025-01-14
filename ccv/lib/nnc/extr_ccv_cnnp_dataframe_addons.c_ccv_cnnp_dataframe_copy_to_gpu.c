
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_cnnp_dataframe_t ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {int tensor_offset; int device_id; TYPE_1__ tuple; } ;
typedef TYPE_2__ ccv_cnnp_copy_to_gpu_context_t ;
typedef int ccv_cnnp_column_data_context_deinit_f ;


 int CCV_STREAM_CONTEXT_GPU ;
 int CCV_STREAM_SET_DEVICE_ID (int,int const) ;
 int COLUMN_ID_LIST (int const) ;
 int _ccv_cnnp_copy_to_gpu ;
 int _ccv_cnnp_tensor_list_deinit ;
 int assert (int) ;
 scalar_t__ ccfree ;
 scalar_t__ ccmalloc (int) ;
 int ccv_cnnp_dataframe_map (int * const,int ,int,int ,int ,TYPE_2__* const,int ) ;

int ccv_cnnp_dataframe_copy_to_gpu(ccv_cnnp_dataframe_t* const dataframe, const int column_idx, const int tensor_offset, const int tensor_size, const int device_id)
{
 assert(tensor_size > 0);
 int stream_type = CCV_STREAM_CONTEXT_GPU;
 CCV_STREAM_SET_DEVICE_ID(stream_type, device_id);
 ccv_cnnp_copy_to_gpu_context_t* const copy_to_gpu_context = (ccv_cnnp_copy_to_gpu_context_t*)ccmalloc(sizeof(ccv_cnnp_copy_to_gpu_context_t));
 copy_to_gpu_context->tuple.size = tensor_size;
 copy_to_gpu_context->tensor_offset = tensor_offset;
 copy_to_gpu_context->device_id = device_id;
 return ccv_cnnp_dataframe_map(dataframe, _ccv_cnnp_copy_to_gpu, stream_type, _ccv_cnnp_tensor_list_deinit, COLUMN_ID_LIST(column_idx), copy_to_gpu_context, (ccv_cnnp_column_data_context_deinit_f)ccfree);
}
