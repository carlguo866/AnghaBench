
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_hint_t ;
typedef int ccv_nnc_cmd_param_t ;


 int assert (int) ;

__attribute__((used)) static void _ccv_nnc_categorical_crossentropy_tensor_auto_back(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* const inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* const outputs, const int output_size)
{
 assert(input_size >= 2);
 assert(output_size >= 1);
 outputs[0] = inputs[1];
 if (output_size > 1)
  outputs[1] = inputs[2];
}
