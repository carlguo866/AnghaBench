
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t *hxxx_ep3b_to_rbsp( uint8_t *p, uint8_t *end, unsigned *pi_prev, size_t i_count )
{
    for( size_t i=0; i<i_count; i++ )
    {
        if( ++p >= end )
            return p;

        *pi_prev = (*pi_prev << 1) | (!*p);

        if( *p == 0x03 &&
           ( p + 1 ) != end )
        {
            if( (*pi_prev & 0x06) == 0x06 )
            {
                ++p;
                *pi_prev = ((*pi_prev >> 1) << 1) | (!*p);
            }
        }
    }
    return p;
}
