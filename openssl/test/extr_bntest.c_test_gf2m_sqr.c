
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_GF2m_add (int *,int *,int *) ;
 int BN_GF2m_arr2poly (int ,int *) ;
 int BN_GF2m_mod_mul (int *,int *,int *,int *,int ) ;
 int BN_GF2m_mod_sqr (int *,int *,int *,int ) ;
 int BN_bntest_rand (int *,int,int ,int ) ;
 int BN_copy (int *,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int NUM0 ;
 scalar_t__ TEST_BN_eq_zero (int *) ;
 int TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int ctx ;
 int p0 ;
 int p1 ;

__attribute__((used)) static int test_gf2m_sqr(void)
{
    BIGNUM *a = ((void*)0), *b[2] = {((void*)0),((void*)0)}, *c = ((void*)0), *d = ((void*)0);
    int i, j, st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(b[0] = BN_new())
            || !TEST_ptr(b[1] = BN_new())
            || !TEST_ptr(c = BN_new())
            || !TEST_ptr(d = BN_new()))
        goto err;

    if (!(TEST_true(BN_GF2m_arr2poly(p0, b[0]))
            && TEST_true(BN_GF2m_arr2poly(p1, b[1]))))
        goto err;

    for (i = 0; i < NUM0; i++) {
        if (!TEST_true(BN_bntest_rand(a, 1024, 0, 0)))
                goto err;
        for (j = 0; j < 2; j++) {
            if (!(TEST_true(BN_GF2m_mod_sqr(c, a, b[j], ctx))
                    && TEST_true(BN_copy(d, a))
                    && TEST_true(BN_GF2m_mod_mul(d, a, d, b[j], ctx))
                    && TEST_true(BN_GF2m_add(d, c, d))

                    && TEST_BN_eq_zero(d)))
                goto err;
        }
    }
    st = 1;
 err:
    BN_free(a);
    BN_free(b[0]);
    BN_free(b[1]);
    BN_free(c);
    BN_free(d);
    return st;
}
