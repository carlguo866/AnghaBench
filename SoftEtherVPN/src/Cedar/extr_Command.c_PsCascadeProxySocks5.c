
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int ProxyPassword; int ProxyUsername; scalar_t__ ProxyPort; int ProxyName; int ProxyType; int AccountName; } ;
struct TYPE_18__ {int (* Write ) (TYPE_4__*,int *) ;} ;
struct TYPE_17__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_16__ {char* HubName; int Rpc; } ;
struct TYPE_15__ {TYPE_6__* ClientOption; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef int CLIENT_OPTION ;


 int * CmdEvalHostAndPort ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int * CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 int FreeRpcCreateLink (TYPE_1__*) ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int PROXY_SOCKS5 ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ParseHostPort (char*,char**,scalar_t__*,int) ;
 scalar_t__ ScGetLink (int ,TYPE_1__*) ;
 scalar_t__ ScSetLink (int ,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_6__* ZeroMalloc (int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_4__*,int *) ;

UINT PsCascadeProxySocks5(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CREATE_LINK t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"SERVER", CmdPrompt, _UU("CMD_CascadeProxyHttp_Prompt_Server"), CmdEvalHostAndPort, ((void*)0)},
  {"USERNAME", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"PASSWORD", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
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
 t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
 UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), GetParamUniStr(o, "[name]"));


 ret = ScGetLink(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  char *host;
  UINT port;


  if (ParseHostPort(GetParamStr(o, "SERVER"), &host, &port, 1080))
  {
   t.ClientOption->ProxyType = PROXY_SOCKS5;
   StrCpy(t.ClientOption->ProxyName, sizeof(t.ClientOption->ProxyName), host);
   t.ClientOption->ProxyPort = port;
   StrCpy(t.ClientOption->ProxyUsername, sizeof(t.ClientOption->ProxyName), GetParamStr(o, "USERNAME"));
   StrCpy(t.ClientOption->ProxyPassword, sizeof(t.ClientOption->ProxyName), GetParamStr(o, "PASSWORD"));
   Free(host);
  }

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
