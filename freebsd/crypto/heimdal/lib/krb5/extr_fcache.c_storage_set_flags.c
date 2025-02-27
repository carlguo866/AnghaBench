
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_context ;






 int KRB5_STORAGE_HOST_BYTEORDER ;
 int KRB5_STORAGE_KEYBLOCK_KEYTYPE_TWICE ;
 int KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE ;
 int KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS ;
 int krb5_abortx (int ,char*,int) ;
 int krb5_storage_set_flags (int *,int) ;

__attribute__((used)) static void
storage_set_flags(krb5_context context, krb5_storage *sp, int vno)
{
    int flags = 0;
    switch(vno) {
    case 131:
 flags |= KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS;
 flags |= KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE;
 flags |= KRB5_STORAGE_HOST_BYTEORDER;
 break;
    case 130:
 flags |= KRB5_STORAGE_HOST_BYTEORDER;
 break;
    case 129:
 flags |= KRB5_STORAGE_KEYBLOCK_KEYTYPE_TWICE;
 break;
    case 128:
 break;
    default:
 krb5_abortx(context,
      "storage_set_flags called with bad vno (%x)", vno);
    }
    krb5_storage_set_flags(sp, flags);
}
