
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_1__ UUID ;
struct TYPE_8__ {TYPE_1__ Uuid; } ;
typedef scalar_t__ RPC_WSTR ;
typedef scalar_t__ RPC_STATUS ;
typedef TYPE_2__ RPC_IF_ID ;
typedef int RPC_EP_INQ_HANDLE ;
typedef scalar_t__ RPC_BINDING_HANDLE ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int * KULL_M_RPC_AUTH_IDENTITY_HANDLE_NULLSESSION ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int RPC_C_AUTHN_GSS_NEGOTIATE ;
 int RPC_C_EP_ALL_ELTS ;
 int RPC_C_IMP_LEVEL_DEFAULT ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_X_NO_MORE_ENTRIES ;
 int RpcBindingFree (scalar_t__*) ;
 scalar_t__ RpcBindingToStringBinding (scalar_t__,scalar_t__*) ;
 scalar_t__ RpcMgmtEpEltInqBegin (scalar_t__,int ,int *,int ,int *,int *) ;
 scalar_t__ RpcMgmtEpEltInqDone (int *) ;
 scalar_t__ RpcMgmtEpEltInqNext (int ,TYPE_2__*,scalar_t__*,int *,scalar_t__*) ;
 int RpcStringFree (scalar_t__*) ;
 scalar_t__ RtlEqualGuid (TYPE_1__*,TYPE_1__*) ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_rpc_createBinding (int *,int ,int ,int *,int *,scalar_t__,int ,int *,int ,scalar_t__*,int *) ;
 int kull_m_rpc_deleteBinding (scalar_t__*) ;
 int kull_m_rpc_getArgs (int,int **,int *,int *,int *,int *,int *,int ,scalar_t__*,int *,scalar_t__) ;
 int kull_m_string_displayGUID (TYPE_1__*) ;

NTSTATUS kuhl_m_rpc_enum(int argc, wchar_t * argv[])
{
 RPC_STATUS status, enumStatus;
 RPC_BINDING_HANDLE Binding, EnumBinding;
 RPC_EP_INQ_HANDLE InquiryContext;
 RPC_IF_ID IfId;
 RPC_WSTR Annotation, bindString;
 UUID prev = {0};
 BOOL isNullSession, sameId, avoidMsBugWasHere = FALSE;
 PCWSTR szRemote, szProtSeq;
 DWORD AuthnSvc;

 kull_m_rpc_getArgs(argc, argv, &szRemote, &szProtSeq, ((void*)0), ((void*)0), &AuthnSvc, RPC_C_AUTHN_GSS_NEGOTIATE, &isNullSession, ((void*)0), TRUE);
 if(kull_m_rpc_createBinding(((void*)0), szProtSeq, szRemote, ((void*)0), ((void*)0), FALSE, AuthnSvc, isNullSession ? KULL_M_RPC_AUTH_IDENTITY_HANDLE_NULLSESSION : ((void*)0), RPC_C_IMP_LEVEL_DEFAULT, &Binding, ((void*)0)))
 {
  status = RpcMgmtEpEltInqBegin(Binding, RPC_C_EP_ALL_ELTS, ((void*)0), 0, ((void*)0), &InquiryContext);
  if(status == RPC_S_OK)
  {
   do
   {
    enumStatus = RpcMgmtEpEltInqNext(InquiryContext, &IfId, &EnumBinding, ((void*)0), &Annotation);
    if(enumStatus == RPC_S_OK)
    {
     avoidMsBugWasHere = TRUE;
     sameId = RtlEqualGuid(&IfId.Uuid, &prev);
     if(!sameId)
     {
      kprintf(L"UUID: ");
      kull_m_string_displayGUID(&IfId.Uuid);
      if(Annotation)
      {
       kprintf(L"\t%s", Annotation);
       RpcStringFree(&Annotation);
      }
      kprintf(L"\n");
      prev = IfId.Uuid;
     }
     if(EnumBinding)
     {
      status = RpcBindingToStringBinding(EnumBinding, &bindString);
      if(status == RPC_S_OK)
      {
       kprintf(L"\t%s\n", bindString);
       RpcStringFree(&bindString);
      }
      else PRINT_ERROR(L"RpcBindingToStringBinding: %08x\n", status);
      RpcBindingFree(&EnumBinding);
     }
    }
   } while(enumStatus == RPC_S_OK);

   if(!avoidMsBugWasHere && (enumStatus == RPC_X_NO_MORE_ENTRIES))
    PRINT_ERROR(L"RpcMgmtEpEltInqNext: %08x, maybe really no EP, maybe network problem\n", enumStatus);
   else if(enumStatus != RPC_X_NO_MORE_ENTRIES)
    PRINT_ERROR(L"RpcMgmtEpEltInqNext: %08x\n", enumStatus);
   status = RpcMgmtEpEltInqDone(&InquiryContext);
   if(status != RPC_S_OK)
    PRINT_ERROR(L"RpcMgmtEpEltInqDone: %08x\n", status);
  }
  else PRINT_ERROR(L"RpcMgmtEpEltInqBegin: %08x\n", status);
  kull_m_rpc_deleteBinding(&Binding);
 }
 return STATUS_SUCCESS;
}
