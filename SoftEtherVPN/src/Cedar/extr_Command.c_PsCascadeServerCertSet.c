
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int AccountName; } ;
struct TYPE_19__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_18__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_17__ {int Rpc; int * HubName; } ;
struct TYPE_16__ {int * ServerCert; TYPE_7__* ClientOption; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef int CLIENT_OPTION ;


 int CmdEvalIsFile ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int * FileToXW (int ) ;
 int FreeParamValueList (int *) ;
 int FreeRpcCreateLink (TYPE_1__*) ;
 int FreeX (int *) ;
 int GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetLink (int ,TYPE_1__*) ;
 scalar_t__ ScSetLink (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_7__* ZeroMalloc (int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (TYPE_4__*,int ) ;

UINT PsCascadeServerCertSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_LINK t;
 X *x;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"LOADCERT", CmdPrompt, _UU("CMD_LOADCERTPATH"), CmdEvalIsFile, ((void*)0)},
 };


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 x = FileToXW(GetParamUniStr(o, "LOADCERT"));
 if (x == ((void*)0))
 {
  FreeParamValueList(o);
  c->Write(c, _UU("CMD_LOADCERT_FAILED"));
  return ERR_INTERNAL_ERROR;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
 t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), GetParamUniStr(o, "[name]"));


 ret = ScGetLink(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  FreeX(x);
  return ret;
 }
 else
 {

  if (t.ServerCert != ((void*)0))
  {
   FreeX(t.ServerCert);
  }
  t.ServerCert = x;

  ret = ScSetLink(ps->Rpc, &t);
  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  FreeRpcCreateLink(&t);
 }

 FreeParamValueList(o);

 return 0;
}
