
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BR_EC_curve25519 ;
 int br_ec_c25519_i15 ;
 int test_EC_c25519 (char*,int *) ;
 int test_EC_keygen (char*,int *,int) ;

__attribute__((used)) static void
test_EC_c25519_i15(void)
{
 test_EC_c25519("EC_c25519_i15", &br_ec_c25519_i15);
 test_EC_keygen("EC_c25519_i15", &br_ec_c25519_i15,
  (uint32_t)1 << BR_EC_curve25519);
}
