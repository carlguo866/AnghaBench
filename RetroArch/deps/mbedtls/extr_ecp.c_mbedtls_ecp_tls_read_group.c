
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int mbedtls_ecp_group ;
struct TYPE_3__ {int grp_id; } ;
typedef TYPE_1__ mbedtls_ecp_curve_info ;


 int MBEDTLS_ECP_TLS_NAMED_CURVE ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ;
 TYPE_1__* mbedtls_ecp_curve_info_from_tls_id (int) ;
 int mbedtls_ecp_group_load (int *,int ) ;

int mbedtls_ecp_tls_read_group( mbedtls_ecp_group *grp, const unsigned char **buf, size_t len )
{
    uint16_t tls_id;
    const mbedtls_ecp_curve_info *curve_info;




    if( len < 3 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );




    if( *(*buf)++ != MBEDTLS_ECP_TLS_NAMED_CURVE )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );




    tls_id = *(*buf)++;
    tls_id <<= 8;
    tls_id |= *(*buf)++;

    if( ( curve_info = mbedtls_ecp_curve_info_from_tls_id( tls_id ) ) == ((void*)0) )
        return( MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE );

    return mbedtls_ecp_group_load( grp, curve_info->grp_id );
}
