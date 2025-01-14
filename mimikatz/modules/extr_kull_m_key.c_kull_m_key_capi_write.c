
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwExExportFlagLen; struct TYPE_4__* pExExportFlag; scalar_t__ dwExPrivateKeyLen; struct TYPE_4__* pExPrivateKey; scalar_t__ dwExPublicKeyLen; struct TYPE_4__* pExPublicKey; scalar_t__ dwSiExportFlagLen; struct TYPE_4__* pSiExportFlag; scalar_t__ dwSiPrivateKeyLen; struct TYPE_4__* pSiPrivateKey; scalar_t__ dwSiPublicKeyLen; struct TYPE_4__* pSiPublicKey; scalar_t__ dwHashLen; struct TYPE_4__* pHash; scalar_t__ dwNameLen; struct TYPE_4__* pName; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PKULL_M_KEY_CAPI_BLOB ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int KULL_M_KEY_CAPI_BLOB ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int RtlCopyMemory (scalar_t__,TYPE_1__*,scalar_t__) ;
 int TRUE ;
 int pName ;

BOOL kull_m_key_capi_write(PKULL_M_KEY_CAPI_BLOB capiKey, PVOID *data, DWORD *size)
{
 BOOL status = FALSE;
 PBYTE ptr;
 *size = FIELD_OFFSET(KULL_M_KEY_CAPI_BLOB, pName) + capiKey->dwNameLen + capiKey->dwHashLen + capiKey->dwSiPublicKeyLen + capiKey->dwSiPrivateKeyLen + capiKey->dwSiExportFlagLen + capiKey->dwExPublicKeyLen + capiKey->dwExPrivateKeyLen + capiKey->dwExExportFlagLen;
 if(*data = LocalAlloc(LPTR, *size))
 {
  ptr = (PBYTE) *data;
  RtlCopyMemory(ptr, capiKey, FIELD_OFFSET(KULL_M_KEY_CAPI_BLOB, pName));
  ptr += FIELD_OFFSET(KULL_M_KEY_CAPI_BLOB, pName);
  RtlCopyMemory(ptr, capiKey->pName, capiKey->dwNameLen);
  ptr += capiKey->dwNameLen;
  RtlCopyMemory(ptr, capiKey->pHash, capiKey->dwHashLen);
  ptr += capiKey->dwHashLen;
  RtlCopyMemory(ptr, capiKey->pSiPublicKey, capiKey->dwSiPublicKeyLen);
  ptr += capiKey->dwSiPublicKeyLen;
  RtlCopyMemory(ptr, capiKey->pSiPrivateKey, capiKey->dwSiPrivateKeyLen);
  ptr += capiKey->dwSiPrivateKeyLen;
  RtlCopyMemory(ptr, capiKey->pSiExportFlag, capiKey->dwSiExportFlagLen);
  ptr += capiKey->dwSiExportFlagLen;
  RtlCopyMemory(ptr, capiKey->pExPublicKey, capiKey->dwExPublicKeyLen);
  ptr += capiKey->dwExPublicKeyLen;
  RtlCopyMemory(ptr, capiKey->pExPrivateKey, capiKey->dwExPrivateKeyLen);
  ptr += capiKey->dwExPrivateKeyLen;
  RtlCopyMemory(ptr, capiKey->pExExportFlag, capiKey->dwExExportFlagLen);
  status = TRUE;
 }
 return status;
}
