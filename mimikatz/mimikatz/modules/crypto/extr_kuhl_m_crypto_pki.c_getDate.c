
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_8__ {TYPE_1__* pCertInfo; } ;
struct TYPE_7__ {scalar_t__ NotAfter; scalar_t__ NotBefore; } ;
struct TYPE_6__ {scalar_t__ NotAfter; scalar_t__ NotBefore; } ;
typedef scalar_t__ PVOID ;
typedef int* PULONGLONG ;
typedef scalar_t__* PULONG ;
typedef TYPE_2__* PKIWI_SIGNER ;
typedef scalar_t__* PFILETIME ;
typedef TYPE_3__* PCCERT_CONTEXT ;


 int GetSystemTimeAsFileTime (scalar_t__*) ;

void getDate(PFILETIME s, PFILETIME e, PVOID certOrCrlinfo, PCCERT_CONTEXT signer, PKIWI_SIGNER dSigner)
{
 PFILETIME *info = (PFILETIME *) certOrCrlinfo;
 if(info[0])
  *s = *info[0];
 else
 {
  if(signer && *(PULONG) &signer->pCertInfo->NotBefore)
   *s = signer->pCertInfo->NotBefore;
  else if(dSigner && *(PULONG) &dSigner->NotBefore)
   *s = dSigner->NotBefore;
  else GetSystemTimeAsFileTime(s);
 }
 if(info[1])
  *e = *info[1];
 else
 {
  if(signer && *(PULONG) &signer->pCertInfo->NotAfter)
   *e = signer->pCertInfo->NotAfter;
  else if(dSigner && *(PULONG) &dSigner->NotAfter)
   *e = dSigner->NotAfter;
  else
  {
   *e = *s;
   *(PULONGLONG) e += (ULONGLONG) 10000000 * 60 * 60 * 24 * 365 * 10;
  }
 }
}
