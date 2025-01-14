
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_12__ {int Size; int Buf; } ;
struct TYPE_11__ {int * MsChapV2_EapClient; scalar_t__* MsChapV2_ClientResponse; scalar_t__* MsChapV2_ClientChallenge; scalar_t__* MsChapV2_ServerChallenge; int MsChapV2_PPPUsername; } ;
struct TYPE_10__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ IPC_MSCHAP_V2_AUTHINFO ;
typedef int EAP_CLIENT ;
typedef TYPE_3__ BUF ;


 int Copy (scalar_t__*,int ,int) ;
 int FreeBuf (TYPE_3__*) ;
 int FreeToken (TYPE_1__*) ;
 int IPC_PASSWORD_MSCHAPV2_TAG ;
 int IsEmptyStr (int ) ;
 TYPE_1__* ParseTokenWithNullStr (char*,char*) ;
 int StartWith (char*,int ) ;
 int StrCpy (int ,int,int ) ;
 TYPE_3__* StrToBin (int ) ;
 int Zero (TYPE_2__*,int) ;

bool ParseAndExtractMsChapV2InfoFromPassword(IPC_MSCHAP_V2_AUTHINFO *d, char *password)
{
 TOKEN_LIST *t;
 bool ret = 0;

 if (d == ((void*)0) || password == ((void*)0))
 {
  return 0;
 }

 Zero(d, sizeof(IPC_MSCHAP_V2_AUTHINFO));

 if (StartWith(password, IPC_PASSWORD_MSCHAPV2_TAG) == 0)
 {
  return 0;
 }

 t = ParseTokenWithNullStr(password, ":");

 if (t->NumTokens == 6)
 {
  BUF *b1, *b2, *b3, *b4;

  b1 = StrToBin(t->Token[2]);
  b2 = StrToBin(t->Token[3]);
  b3 = StrToBin(t->Token[4]);
  b4 = StrToBin(t->Token[5]);

  if (IsEmptyStr(t->Token[1]) == 0 && b1->Size == 16 && b2->Size == 16 && b3->Size == 24
    && b4->Size == 8)
  {
   UINT64 eap_client_ptr = 0;

   StrCpy(d->MsChapV2_PPPUsername, sizeof(d->MsChapV2_PPPUsername), t->Token[1]);
   Copy(d->MsChapV2_ServerChallenge, b1->Buf, 16);
   Copy(d->MsChapV2_ClientChallenge, b2->Buf, 16);
   Copy(d->MsChapV2_ClientResponse, b3->Buf, 24);
   Copy(&eap_client_ptr, b4->Buf, 8);

   d->MsChapV2_EapClient = (EAP_CLIENT *)eap_client_ptr;

   ret = 1;
  }

  FreeBuf(b1);
  FreeBuf(b2);
  FreeBuf(b3);
  FreeBuf(b4);
 }

 FreeToken(t);

 return ret;
}
