
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct detail_data {TYPE_1__* pCertViewInfo; } ;
struct TYPE_10__ {TYPE_4__* pCertInfo; } ;
struct TYPE_7__ {scalar_t__ cbData; } ;
struct TYPE_8__ {TYPE_2__ PublicKey; } ;
struct TYPE_9__ {TYPE_3__ SubjectPublicKeyInfo; } ;
struct TYPE_6__ {TYPE_5__* pCertContext; } ;
typedef TYPE_5__* PCCERT_CONTEXT ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int add_v1_field (int ,struct detail_data*,int *) ;
 int * v1_fields ;

__attribute__((used)) static void add_v1_fields(HWND hwnd, struct detail_data *data)
{
    unsigned int i;
    PCCERT_CONTEXT cert = data->pCertViewInfo->pCertContext;




    for (i = 0; i < ARRAY_SIZE(v1_fields) - 1; i++)
        add_v1_field(hwnd, data, &v1_fields[i]);
    if (cert->pCertInfo->SubjectPublicKeyInfo.PublicKey.cbData)
        add_v1_field(hwnd, data, &v1_fields[i]);
}
