
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int ASN1_ENUMERATED ;


 int V_ASN1_ENUMERATED ;
 int asn1_string_get_int64 (int *,int const*,int ) ;

int ASN1_ENUMERATED_get_int64(int64_t *pr, const ASN1_ENUMERATED *a)
{
    return asn1_string_get_int64(pr, a, V_ASN1_ENUMERATED);
}
