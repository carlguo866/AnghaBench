
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int infinity; } ;
typedef TYPE_1__ secp256k1_gej ;



__attribute__((used)) static int secp256k1_gej_is_infinity(const secp256k1_gej *a) {
    return a->infinity;
}
