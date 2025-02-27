
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp1 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int Name; int Value; } ;
struct TYPE_15__ {int (* Write ) (TYPE_3__*,int ) ;} ;
struct TYPE_14__ {int Rpc; int * HubName; } ;
struct TYPE_13__ {scalar_t__ NumItem; TYPE_4__* Items; int HubName; } ;
typedef TYPE_1__ RPC_ADMIN_OPTION ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_3__ CONSOLE ;
typedef TYPE_4__ ADMIN_OPTION ;


 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_3__*,int) ;
 int CtInsert (int *,int *,int *,int ) ;
 int * CtNewStandardEx () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcAdminOption (TYPE_1__*) ;
 int GetHubAdminOptionHelpString (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScGetHubExtOptions (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_3__*,int ) ;

UINT PsExtOptionList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ADMIN_OPTION t;


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScGetHubExtOptions(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  CT *ct = CtNewStandardEx();
  UINT i;

  for (i = 0;i < t.NumItem;i++)
  {
   ADMIN_OPTION *e = &t.Items[i];
   wchar_t tmp1[MAX_SIZE];
   wchar_t tmp2[MAX_SIZE];

   StrToUni(tmp1, sizeof(tmp1), e->Name);
   UniToStru(tmp2, e->Value);

   CtInsert(ct, tmp1, tmp2, GetHubAdminOptionHelpString(e->Name));

  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcAdminOption(&t);

 FreeParamValueList(o);

 return 0;
}
