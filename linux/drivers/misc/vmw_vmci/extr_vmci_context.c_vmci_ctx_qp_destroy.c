
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int dummy; } ;
struct vmci_ctx {int queue_pair_array; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_SUCCESS ;
 struct vmci_handle vmci_handle_arr_remove_entry (int ,struct vmci_handle) ;
 scalar_t__ vmci_handle_is_invalid (struct vmci_handle) ;

int vmci_ctx_qp_destroy(struct vmci_ctx *context, struct vmci_handle handle)
{
 struct vmci_handle hndl;

 if (context == ((void*)0) || vmci_handle_is_invalid(handle))
  return VMCI_ERROR_INVALID_ARGS;

 hndl = vmci_handle_arr_remove_entry(context->queue_pair_array, handle);

 return vmci_handle_is_invalid(hndl) ?
  VMCI_ERROR_NOT_FOUND : VMCI_SUCCESS;
}
