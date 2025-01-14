
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int UINT64 ;
typedef int DWORD ;


 int multiprecision_init (int*,size_t) ;

void multiprecision_mult(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength)
{
    DWORD W;
    DWORD U;
    DWORD V;

    U = V = W = 0;
    multiprecision_init(c, keyLength);


    for (uint32_t i = 0; i < keyLength; i++) {
        U = 0;
        for (uint32_t j = 0; j < keyLength; j++) {
            uint64_t result;
            result = ((UINT64)a[i]) * ((uint64_t) b[j]);
            W = result >> 32;
            V = a[i] * b[j];
            V = V + U;
            U = (V < U);
            U += W;
            V = V + c[i + j];
            U += (V < c[i + j]);
            c[i + j] = V;
        }
        c[i + keyLength] = U;
    }
}
