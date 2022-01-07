
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_FLG_CONSTTIME ;
 int BN_F_BN_MOD_EXP_SIMPLE ;
 scalar_t__ BN_abs_is_word (int const*,int) ;
 scalar_t__ BN_get_flags (int const*,int ) ;
 scalar_t__ BN_is_bit_set (int const*,int) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod_mul (int *,int *,int *,int const*,int *) ;
 int BN_nnmod (int *,int const*,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_one (int *) ;
 int BN_window_bits_for_exponent_size (int) ;
 int BN_zero (int *) ;
 int BNerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int TABLE_SIZE ;
 int bn_check_top (int *) ;

int BN_mod_exp_simple(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
                      const BIGNUM *m, BN_CTX *ctx)
{
    int i, j, bits, ret = 0, wstart, wend, window, wvalue;
    int start = 1;
    BIGNUM *d;

    BIGNUM *val[TABLE_SIZE];

    if (BN_get_flags(p, BN_FLG_CONSTTIME) != 0
            || BN_get_flags(a, BN_FLG_CONSTTIME) != 0
            || BN_get_flags(m, BN_FLG_CONSTTIME) != 0) {

        BNerr(BN_F_BN_MOD_EXP_SIMPLE, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    bits = BN_num_bits(p);
    if (bits == 0) {

        if (BN_abs_is_word(m, 1)) {
            ret = 1;
            BN_zero(r);
        } else {
            ret = BN_one(r);
        }
        return ret;
    }

    BN_CTX_start(ctx);
    d = BN_CTX_get(ctx);
    val[0] = BN_CTX_get(ctx);
    if (val[0] == ((void*)0))
        goto err;

    if (!BN_nnmod(val[0], a, m, ctx))
        goto err;
    if (BN_is_zero(val[0])) {
        BN_zero(r);
        ret = 1;
        goto err;
    }

    window = BN_window_bits_for_exponent_size(bits);
    if (window > 1) {
        if (!BN_mod_mul(d, val[0], val[0], m, ctx))
            goto err;
        j = 1 << (window - 1);
        for (i = 1; i < j; i++) {
            if (((val[i] = BN_CTX_get(ctx)) == ((void*)0)) ||
                !BN_mod_mul(val[i], val[i - 1], d, m, ctx))
                goto err;
        }
    }

    start = 1;


    wvalue = 0;
    wstart = bits - 1;
    wend = 0;

    if (!BN_one(r))
        goto err;

    for (;;) {
        if (BN_is_bit_set(p, wstart) == 0) {
            if (!start)
                if (!BN_mod_mul(r, r, r, m, ctx))
                    goto err;
            if (wstart == 0)
                break;
            wstart--;
            continue;
        }





        j = wstart;
        wvalue = 1;
        wend = 0;
        for (i = 1; i < window; i++) {
            if (wstart - i < 0)
                break;
            if (BN_is_bit_set(p, wstart - i)) {
                wvalue <<= (i - wend);
                wvalue |= 1;
                wend = i;
            }
        }


        j = wend + 1;

        if (!start)
            for (i = 0; i < j; i++) {
                if (!BN_mod_mul(r, r, r, m, ctx))
                    goto err;
            }


        if (!BN_mod_mul(r, r, val[wvalue >> 1], m, ctx))
            goto err;


        wstart -= wend + 1;
        wvalue = 0;
        start = 0;
        if (wstart < 0)
            break;
    }
    ret = 1;
 err:
    BN_CTX_end(ctx);
    bn_check_top(r);
    return ret;
}
