
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int time_t ;
typedef int t ;
struct TYPE_14__ {int encrypt_id; } ;
struct TYPE_13__ {int attr; } ;
struct TYPE_12__ {TYPE_1__* entries; } ;
struct TYPE_11__ {int count; } ;
typedef TYPE_2__* HPDF_Xref ;
typedef int HPDF_UINT32 ;
typedef int HPDF_UINT ;
typedef int HPDF_MD5_CTX ;
typedef TYPE_3__* HPDF_EncryptDict ;
typedef TYPE_4__* HPDF_Encrypt ;
typedef TYPE_2__* HPDF_Dict ;
typedef int const HPDF_BYTE ;


 int HPDF_INFO_AUTHOR ;
 int HPDF_INFO_CREATOR ;
 int HPDF_INFO_KEYWORDS ;
 int HPDF_INFO_PRODUCER ;
 int HPDF_INFO_SUBJECT ;
 int HPDF_INFO_TITLE ;
 char* HPDF_Info_GetInfoAttr (TYPE_2__*,int ) ;
 int HPDF_MD5Final (int ,int *) ;
 int HPDF_MD5Init (int *) ;
 int HPDF_MD5Update (int *,int const*,int) ;
 int HPDF_StrLen (char const*,int) ;
 int HPDF_TIME (int *) ;
 int HPDF_UNUSED (TYPE_2__*) ;

void
HPDF_EncryptDict_CreateID (HPDF_EncryptDict dict,
                            HPDF_Dict info,
                            HPDF_Xref xref)
{
    HPDF_MD5_CTX ctx;
    HPDF_Encrypt attr = (HPDF_Encrypt)dict->attr;





    time_t t = HPDF_TIME (((void*)0));


    HPDF_MD5Init (&ctx);
    HPDF_UNUSED (xref);
    HPDF_UNUSED (info);


    HPDF_MD5Update(&ctx, (HPDF_BYTE *)&t, sizeof(t));


    if (info) {
        const char *s;
        HPDF_UINT len;


        s = HPDF_Info_GetInfoAttr (info, HPDF_INFO_AUTHOR);
        if ((len = HPDF_StrLen (s, -1)) > 0)
            HPDF_MD5Update(&ctx, (const HPDF_BYTE *)s, len);


        s = HPDF_Info_GetInfoAttr (info, HPDF_INFO_CREATOR);
        if ((len = HPDF_StrLen (s, -1)) > 0)
            HPDF_MD5Update(&ctx, (const HPDF_BYTE *)s, len);


        s = HPDF_Info_GetInfoAttr (info, HPDF_INFO_PRODUCER);
        if ((len = HPDF_StrLen (s, -1)) > 0)
            HPDF_MD5Update(&ctx, (const HPDF_BYTE *)s, len);


        s = HPDF_Info_GetInfoAttr (info, HPDF_INFO_TITLE);
        if ((len = HPDF_StrLen (s, -1)) > 0)
            HPDF_MD5Update(&ctx, (const HPDF_BYTE *)s, len);


        s = HPDF_Info_GetInfoAttr (info, HPDF_INFO_SUBJECT);
        if ((len = HPDF_StrLen (s, -1)) > 0)
            HPDF_MD5Update(&ctx, (const HPDF_BYTE *)s, len);


        s = HPDF_Info_GetInfoAttr (info, HPDF_INFO_KEYWORDS);
        if ((len = HPDF_StrLen (s, -1)) > 0)
            HPDF_MD5Update(&ctx, (const HPDF_BYTE *)s, len);

        HPDF_MD5Update(&ctx, (const HPDF_BYTE *)&(xref->entries->count),
                sizeof(HPDF_UINT32));

    }

    HPDF_MD5Final(attr->encrypt_id, &ctx);
}
