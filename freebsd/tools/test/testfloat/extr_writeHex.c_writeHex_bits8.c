
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;
typedef int FILE ;


 int fputc (int,int *) ;

__attribute__((used)) static void writeHex_bits8( bits8 a, FILE *stream )
{
    int digit;

    digit = ( a>>4 ) & 0xF;
    if ( 9 < digit ) digit += 'A' - ( '0' + 10 );
    fputc( '0' + digit, stream );
    digit = a & 0xF;
    if ( 9 < digit ) digit += 'A' - ( '0' + 10 );
    fputc( '0' + digit, stream );

}
