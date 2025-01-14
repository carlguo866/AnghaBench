
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* p; } ;
struct TYPE_3__ {int* p; } ;
typedef int DWORD ;


 int KEY_LENGTH_DWORDS_P256 ;
 TYPE_2__ curve ;
 TYPE_1__ curve_p256 ;
 int multiprecision_add (int*,int*,int*,int) ;
 scalar_t__ multiprecision_compare (int*,int*,int) ;
 int multiprecision_copy (int*,int*,int) ;
 int multiprecision_init (int*,int) ;
 int multiprecision_iszero (int*,int) ;
 int multiprecision_rshift (int*,int*,int) ;
 int multiprecision_sub (int*,int*,int*,int) ;
 int multiprecision_sub_mod (int*,int*,int*,int) ;

void multiprecision_inv_mod(DWORD *aminus, DWORD *u, uint32_t keyLength)
{
    DWORD v[KEY_LENGTH_DWORDS_P256];
    DWORD A[KEY_LENGTH_DWORDS_P256 + 1];
    DWORD C[KEY_LENGTH_DWORDS_P256 + 1];
    DWORD *modp;

    if (keyLength == KEY_LENGTH_DWORDS_P256) {
        modp = curve_p256.p;
    } else {
        modp = curve.p;
    }

    multiprecision_copy(v, modp, keyLength);
    multiprecision_init(A, keyLength);
    multiprecision_init(C, keyLength);
    A[0] = 1;

    while (!multiprecision_iszero(u, keyLength)) {
        while (!(u[0] & 0x01)) {
            multiprecision_rshift(u, u, keyLength);
            if (!(A[0] & 0x01)) {
                multiprecision_rshift(A, A, keyLength);
            } else {
                A[keyLength] = multiprecision_add(A, A, modp, keyLength);
                multiprecision_rshift(A, A, keyLength);
                A[keyLength - 1] |= (A[keyLength] << 31);
            }
        }

        while (!(v[0] & 0x01)) {
            multiprecision_rshift(v, v, keyLength);
            if (!(C[0] & 0x01)) {
                multiprecision_rshift(C, C, keyLength);
            } else {
                C[keyLength] = multiprecision_add(C, C, modp, keyLength);
                multiprecision_rshift(C, C, keyLength);
                C[keyLength - 1] |= (C[keyLength] << 31);
            }
        }

        if (multiprecision_compare(u, v, keyLength) >= 0) {
            multiprecision_sub(u, u, v, keyLength);
            multiprecision_sub_mod(A, A, C, keyLength);
        } else {
            multiprecision_sub(v, v, u, keyLength);
            multiprecision_sub_mod(C, C, A, keyLength);
        }
    }

    if (multiprecision_compare(C, modp, keyLength) >= 0) {
        multiprecision_sub(aminus, C, modp, keyLength);
    } else {
        multiprecision_copy(aminus, C, keyLength);
    }
}
