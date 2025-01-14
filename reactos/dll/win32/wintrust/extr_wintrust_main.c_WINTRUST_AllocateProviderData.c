
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pPDSip; } ;
struct TYPE_6__ {int cbStruct; int cdwTrustStepErrors; struct TYPE_6__* psPfns; TYPE_1__ u; struct TYPE_6__* padwTrustStepErrors; } ;
typedef int PROVDATA_SIP ;
typedef int DWORD ;
typedef int CRYPT_PROVIDER_FUNCTIONS ;
typedef TYPE_2__ CRYPT_PROVIDER_DATA ;


 int TRUSTERROR_MAX_STEPS ;
 void* WINTRUST_Alloc (int) ;
 int WINTRUST_Free (TYPE_2__*) ;

__attribute__((used)) static CRYPT_PROVIDER_DATA *WINTRUST_AllocateProviderData(void)
{
    CRYPT_PROVIDER_DATA *provData;

    provData = WINTRUST_Alloc(sizeof(CRYPT_PROVIDER_DATA));
    if (!provData)
        goto oom;
    provData->cbStruct = sizeof(CRYPT_PROVIDER_DATA);

    provData->padwTrustStepErrors =
     WINTRUST_Alloc(TRUSTERROR_MAX_STEPS * sizeof(DWORD));
    if (!provData->padwTrustStepErrors)
        goto oom;
    provData->cdwTrustStepErrors = TRUSTERROR_MAX_STEPS;

    provData->u.pPDSip = WINTRUST_Alloc(sizeof(PROVDATA_SIP));
    if (!provData->u.pPDSip)
        goto oom;
    provData->u.pPDSip->cbStruct = sizeof(PROVDATA_SIP);

    provData->psPfns = WINTRUST_Alloc(sizeof(CRYPT_PROVIDER_FUNCTIONS));
    if (!provData->psPfns)
        goto oom;
    provData->psPfns->cbStruct = sizeof(CRYPT_PROVIDER_FUNCTIONS);
    return provData;

oom:
    if (provData)
    {
        WINTRUST_Free(provData->padwTrustStepErrors);
        WINTRUST_Free(provData->u.pPDSip);
        WINTRUST_Free(provData->psPfns);
        WINTRUST_Free(provData);
    }
    return ((void*)0);
}
