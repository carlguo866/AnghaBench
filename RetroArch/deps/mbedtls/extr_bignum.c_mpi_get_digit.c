
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char mbedtls_mpi_uint ;


 int MBEDTLS_ERR_MPI_INVALID_CHARACTER ;

__attribute__((used)) static int mpi_get_digit( mbedtls_mpi_uint *d, int radix, char c )
{
    *d = 255;

    if( c >= 0x30 && c <= 0x39 ) *d = c - 0x30;
    if( c >= 0x41 && c <= 0x46 ) *d = c - 0x37;
    if( c >= 0x61 && c <= 0x66 ) *d = c - 0x57;

    if( *d >= (mbedtls_mpi_uint) radix )
        return( MBEDTLS_ERR_MPI_INVALID_CHARACTER );

    return( 0 );
}
