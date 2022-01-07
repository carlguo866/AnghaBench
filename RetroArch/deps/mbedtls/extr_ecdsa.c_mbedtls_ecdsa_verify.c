
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


struct TYPE_34__ {int * p; } ;
typedef TYPE_1__ const mbedtls_mpi ;
struct TYPE_35__ {TYPE_1__ const X; } ;
typedef TYPE_2__ mbedtls_ecp_point ;
struct TYPE_36__ {TYPE_1__ const N; int G; } ;
typedef TYPE_3__ mbedtls_ecp_group ;


 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_ECP_VERIFY_FAILED ;
 int MBEDTLS_MPI_CHK (int ) ;
 int derive_mpi (TYPE_3__*,TYPE_1__ const*,unsigned char const*,size_t) ;
 int mbedtls_ecp_check_pubkey (TYPE_3__*,TYPE_2__ const*) ;
 scalar_t__ mbedtls_ecp_is_zero (TYPE_2__*) ;
 int mbedtls_ecp_muladd (TYPE_3__*,TYPE_2__*,TYPE_1__ const*,int *,TYPE_1__ const*,TYPE_2__ const*) ;
 int mbedtls_ecp_point_free (TYPE_2__*) ;
 int mbedtls_ecp_point_init (TYPE_2__*) ;
 scalar_t__ mbedtls_mpi_cmp_int (TYPE_1__ const*,int) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_free (TYPE_1__ const*) ;
 int mbedtls_mpi_init (TYPE_1__ const*) ;
 int mbedtls_mpi_inv_mod (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_mod_mpi (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_mul_mpi (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;

int mbedtls_ecdsa_verify( mbedtls_ecp_group *grp,
                  const unsigned char *buf, size_t blen,
                  const mbedtls_ecp_point *Q, const mbedtls_mpi *r, const mbedtls_mpi *s)
{
    int ret;
    mbedtls_mpi e, s_inv, u1, u2;
    mbedtls_ecp_point R;

    mbedtls_ecp_point_init( &R );
    mbedtls_mpi_init( &e ); mbedtls_mpi_init( &s_inv ); mbedtls_mpi_init( &u1 ); mbedtls_mpi_init( &u2 );


    if( grp->N.p == ((void*)0) )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );




    if( mbedtls_mpi_cmp_int( r, 1 ) < 0 || mbedtls_mpi_cmp_mpi( r, &grp->N ) >= 0 ||
        mbedtls_mpi_cmp_int( s, 1 ) < 0 || mbedtls_mpi_cmp_mpi( s, &grp->N ) >= 0 )
    {
        ret = MBEDTLS_ERR_ECP_VERIFY_FAILED;
        goto cleanup;
    }




    MBEDTLS_MPI_CHK( mbedtls_ecp_check_pubkey( grp, Q ) );




    MBEDTLS_MPI_CHK( derive_mpi( grp, &e, buf, blen ) );




    MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( &s_inv, s, &grp->N ) );

    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &u1, &e, &s_inv ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &u1, &u1, &grp->N ) );

    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &u2, r, &s_inv ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &u2, &u2, &grp->N ) );







    MBEDTLS_MPI_CHK( mbedtls_ecp_muladd( grp, &R, &u1, &grp->G, &u2, Q ) );

    if( mbedtls_ecp_is_zero( &R ) )
    {
        ret = MBEDTLS_ERR_ECP_VERIFY_FAILED;
        goto cleanup;
    }





    MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &R.X, &R.X, &grp->N ) );




    if( mbedtls_mpi_cmp_mpi( &R.X, r ) != 0 )
    {
        ret = MBEDTLS_ERR_ECP_VERIFY_FAILED;
        goto cleanup;
    }

cleanup:
    mbedtls_ecp_point_free( &R );
    mbedtls_mpi_free( &e ); mbedtls_mpi_free( &s_inv ); mbedtls_mpi_free( &u1 ); mbedtls_mpi_free( &u2 );

    return( ret );
}
