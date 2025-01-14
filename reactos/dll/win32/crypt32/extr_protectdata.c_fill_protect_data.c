
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int cbData; void* pbData; } ;
struct TYPE_7__ {int pbData; } ;
struct TYPE_6__ {int * pbData; scalar_t__ cbData; } ;
struct TYPE_5__ {int * pbData; scalar_t__ cbData; } ;
struct protect_data_t {int count0; int count1; int null0; int null1; TYPE_4__ salt; TYPE_3__ data0; void* szDataDescr; TYPE_3__ info1; TYPE_3__ info0; TYPE_2__ fingerprint; TYPE_1__ cipher; int hash_len; int hash_alg; int cipher_key_len; int cipher_alg; } ;
typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int HCRYPTPROV ;
typedef int DWORD ;
typedef int BOOL ;


 int CRYPT32_PROTECTDATA_HASH_CALG ;
 int CRYPT32_PROTECTDATA_HASH_LEN ;
 int CRYPT32_PROTECTDATA_KEY_CALG ;
 int CRYPT32_PROTECTDATA_KEY_LEN ;
 int CRYPT32_PROTECTDATA_SALT_LEN ;
 int CryptGenRandom (int ,int,void*) ;
 void* CryptMemAlloc (int) ;
 int ERR (char*) ;
 int FALSE ;
 int TRACE (char*) ;
 int TRACE_DATA_BLOB (TYPE_4__*) ;
 int TRUE ;
 int convert_str_to_blob (int ,TYPE_3__*) ;
 int crypt_magic_str ;
 int free_protect_data (struct protect_data_t*) ;
 int lstrlenW (int ) ;
 int memcpy (void*,int ,int) ;
 int memset (struct protect_data_t*,int ,int) ;

__attribute__((used)) static
BOOL fill_protect_data(struct protect_data_t * pInfo, LPCWSTR szDataDescr,
                       HCRYPTPROV hProv)
{
    DWORD dwStrLen;

    TRACE("called\n");

    if (!pInfo) return FALSE;

    dwStrLen=lstrlenW(szDataDescr);

    memset(pInfo,0,sizeof(*pInfo));

    pInfo->count0=0x0001;

    convert_str_to_blob(crypt_magic_str, &pInfo->info0);

    pInfo->count1=0x0001;

    convert_str_to_blob(crypt_magic_str, &pInfo->info1);

    pInfo->null0=0x0000;

    if ((pInfo->szDataDescr=CryptMemAlloc((dwStrLen+1)*sizeof(WCHAR))))
    {
        memcpy(pInfo->szDataDescr,szDataDescr,(dwStrLen+1)*sizeof(WCHAR));
    }

    pInfo->cipher_alg=CRYPT32_PROTECTDATA_KEY_CALG;
    pInfo->cipher_key_len=CRYPT32_PROTECTDATA_KEY_LEN;

    convert_str_to_blob(crypt_magic_str, &pInfo->data0);

    pInfo->null1=0x0000;
    pInfo->hash_alg=CRYPT32_PROTECTDATA_HASH_CALG;
    pInfo->hash_len=CRYPT32_PROTECTDATA_HASH_LEN;


    if ((pInfo->salt.pbData=CryptMemAlloc(CRYPT32_PROTECTDATA_SALT_LEN)))
    {

        if (!CryptGenRandom(hProv, CRYPT32_PROTECTDATA_SALT_LEN, pInfo->salt.pbData))
        {
            ERR("CryptGenRandom\n");
            free_protect_data(pInfo);
            return FALSE;
        }
        pInfo->salt.cbData=CRYPT32_PROTECTDATA_SALT_LEN;

        TRACE_DATA_BLOB(&pInfo->salt);
    }
    pInfo->cipher.cbData=0;
    pInfo->cipher.pbData=((void*)0);

    pInfo->fingerprint.cbData=0;
    pInfo->fingerprint.pbData=((void*)0);


    if (!pInfo->info0.pbData ||
        !pInfo->info1.pbData ||
        !pInfo->szDataDescr ||
        !pInfo->data0.pbData ||
        !pInfo->salt.pbData
        )
    {
        ERR("could not allocate protect_data structures\n");
        free_protect_data(pInfo);
        return FALSE;
    }

    return TRUE;
}
