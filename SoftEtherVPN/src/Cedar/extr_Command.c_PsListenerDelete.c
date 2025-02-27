
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_8__ {int Rpc; } ;
struct TYPE_7__ {int Enable; int Port; } ;
typedef TYPE_1__ RPC_LISTENER ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 int CmdEvalPort ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPromptPort ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScDeleteListener (int ,TYPE_1__*) ;
 int ToInt (int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PsListenerDelete(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret;
 RPC_LISTENER t;
 PARAM args[] =
 {
  {"[port]", CmdPromptPort, _UU("CMD_ListenerDelete_PortPrompt"), CmdEvalPort, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 t.Enable = 1;
 t.Port = ToInt(GetParamStr(o, "[port]"));

 ret = ScDeleteListener(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {
  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeParamValueList(o);

 return 0;
}
