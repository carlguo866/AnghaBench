
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_17__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_16__ {int Rpc; int * HubName; } ;
struct TYPE_15__ {int * Policy; int Name; int HubName; } ;
typedef TYPE_1__ RPC_SET_GROUP ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int * ClonePolicy (int ) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int EditPolicy (TYPE_4__*,int *,int *,int *,int) ;
 int FreeParamValueList (int *) ;
 int FreeRpcSetGroup (TYPE_1__*) ;
 int GetDefaultPolicy () ;
 int * GetParamStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetGroup (int ,TYPE_1__*) ;
 scalar_t__ ScSetGroup (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsGroupPolicySet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_SET_GROUP t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_GroupCreate_Prompt_NAME"), CmdEvalNotEmpty, ((void*)0)},
  {"NAME", CmdPrompt, _UU("CMD_CascadePolicySet_PROMPT_POLNAME"), CmdEvalNotEmpty, ((void*)0)},
  {"VALUE", CmdPrompt, _UU("CMD_CascadePolicySet_PROMPT_POLVALUE"), CmdEvalNotEmpty, ((void*)0)},
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

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);
 StrCpy(t.Name, sizeof(t.Name), GetParamStr(o, "[name]"));


 ret = ScGetGroup(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {

  if (t.Policy == ((void*)0))
  {
   t.Policy = ClonePolicy(GetDefaultPolicy());
  }

  if (EditPolicy(c, t.Policy, GetParamStr(o, "NAME"), GetParamStr(o, "VALUE"), 0) == 0)
  {

   FreeRpcSetGroup(&t);
   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ERR_INTERNAL_ERROR;
  }

  ret = ScSetGroup(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }
 }

 FreeRpcSetGroup(&t);

 FreeParamValueList(o);

 return 0;
}
