
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_X509_INVALID_EXTENSIONS ;
 int mbedtls_asn1_get_bool (unsigned char**,unsigned char const*,int*) ;
 int mbedtls_asn1_get_int (unsigned char**,unsigned char const*,int*) ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,size_t*,int) ;

__attribute__((used)) static int x509_get_basic_constraints( unsigned char **p,
                                       const unsigned char *end,
                                       int *ca_istrue,
                                       int *max_pathlen )
{
    int ret;
    size_t len;






    *ca_istrue = 0;
    *max_pathlen = 0;

    if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

    if( *p == end )
        return( 0 );

    if( ( ret = mbedtls_asn1_get_bool( p, end, ca_istrue ) ) != 0 )
    {
        if( ret == MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
            ret = mbedtls_asn1_get_int( p, end, ca_istrue );

        if( ret != 0 )
            return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

        if( *ca_istrue != 0 )
            *ca_istrue = 1;
    }

    if( *p == end )
        return( 0 );

    if( ( ret = mbedtls_asn1_get_int( p, end, max_pathlen ) ) != 0 )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

    if( *p != end )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    (*max_pathlen)++;

    return( 0 );
}
