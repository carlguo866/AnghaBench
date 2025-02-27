
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int) ;
 int MBEDTLS_MPI_MAX_SIZE ;
 int mbedtls_mpi_read_binary (int *,unsigned char*,size_t) ;

int mbedtls_mpi_fill_random( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret;
    unsigned char buf[MBEDTLS_MPI_MAX_SIZE];

    if( size > MBEDTLS_MPI_MAX_SIZE )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    MBEDTLS_MPI_CHK( f_rng( p_rng, buf, size ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( X, buf, size ) );

cleanup:
    return( ret );
}
