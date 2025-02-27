
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_context_ele {scalar_t__ width; int size_of; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_SUCCESS ;
 int i40e_read_byte (int *,struct i40e_context_ele*,int *) ;
 int i40e_read_dword (int *,struct i40e_context_ele*,int *) ;
 int i40e_read_qword (int *,struct i40e_context_ele*,int *) ;
 int i40e_read_word (int *,struct i40e_context_ele*,int *) ;

__attribute__((used)) static enum i40e_status_code i40e_get_hmc_context(u8 *context_bytes,
     struct i40e_context_ele *ce_info,
     u8 *dest)
{
 int f;

 for (f = 0; ce_info[f].width != 0; f++) {
  switch (ce_info[f].size_of) {
  case 1:
   i40e_read_byte(context_bytes, &ce_info[f], dest);
   break;
  case 2:
   i40e_read_word(context_bytes, &ce_info[f], dest);
   break;
  case 4:
   i40e_read_dword(context_bytes, &ce_info[f], dest);
   break;
  case 8:
   i40e_read_qword(context_bytes, &ce_info[f], dest);
   break;
  default:

   break;
  }
 }

 return I40E_SUCCESS;
}
