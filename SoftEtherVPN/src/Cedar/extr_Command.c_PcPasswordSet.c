
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
struct TYPE_9__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_8__ {int RemoteClient; } ;
struct TYPE_7__ {int PasswordRemoteOnly; int Password; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD ;
typedef TYPE_2__ PC ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 scalar_t__ CcSetPassword (int ,TYPE_1__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int * CmdPromptChoosePassword ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int GetParamYes (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_3__*,int) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_1__*,int) ;

UINT PcPasswordSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_PASSWORD t;

 PARAM args[] =
 {
  {"[password]", CmdPromptChoosePassword, ((void*)0), ((void*)0), ((void*)0)},
  {"REMOTEONLY", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 StrCpy(t.Password, sizeof(t.Password), GetParamStr(o, "[password]"));
 t.PasswordRemoteOnly = GetParamYes(o, "REMOTEONLY");

 ret = CcSetPassword(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
