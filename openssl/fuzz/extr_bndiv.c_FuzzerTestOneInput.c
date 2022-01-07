
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BN_add (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ BN_bin2bn (int const*,size_t,scalar_t__) ;
 int BN_cmp (scalar_t__,scalar_t__) ;
 int BN_div (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ BN_is_negative (scalar_t__) ;
 int BN_is_zero (scalar_t__) ;
 int BN_mul (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int BN_print_fp (int ,scalar_t__) ;
 int BN_set_negative (scalar_t__,int) ;
 int ERR_clear_error () ;
 size_t MAX_LEN ;
 int OPENSSL_assert (int) ;
 scalar_t__ b1 ;
 scalar_t__ b2 ;
 scalar_t__ b3 ;
 scalar_t__ b4 ;
 scalar_t__ b5 ;
 int ctx ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int) ;
 int putchar (char) ;
 int puts (char*) ;
 int stdout ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    int success = 0;
    size_t l1 = 0, l2 = 0;

    int s1 = 0, s2 = 0;


    if (len > MAX_LEN)
        len = MAX_LEN;




    if (len > 0) {
        --len;




        l1 = ((buf[0] & 0x3f) * len) / 0x3f;
        s1 = buf[0] & 0x40;
        s2 = buf[0] & 0x80;
        ++buf;
        l2 = len - l1;
    }
    OPENSSL_assert(BN_bin2bn(buf, l1, b1) == b1);
    BN_set_negative(b1, s1);
    OPENSSL_assert(BN_bin2bn(buf + l1, l2, b2) == b2);
    BN_set_negative(b2, s2);


    if (BN_is_zero(b2)) {
        success = 1;
        goto done;
    }

    OPENSSL_assert(BN_div(b3, b4, b1, b2, ctx));
    if (BN_is_zero(b1))
        success = BN_is_zero(b3) && BN_is_zero(b4);
    else if (BN_is_negative(b1))
        success = (BN_is_negative(b3) != BN_is_negative(b2) || BN_is_zero(b3))
            && (BN_is_negative(b4) || BN_is_zero(b4));
    else
        success = (BN_is_negative(b3) == BN_is_negative(b2) || BN_is_zero(b3))
            && (!BN_is_negative(b4) || BN_is_zero(b4));
    OPENSSL_assert(BN_mul(b5, b3, b2, ctx));
    OPENSSL_assert(BN_add(b5, b5, b4));

    success = success && BN_cmp(b5, b1) == 0;
    if (!success) {
        BN_print_fp(stdout, b1);
        putchar('\n');
        BN_print_fp(stdout, b2);
        putchar('\n');
        BN_print_fp(stdout, b3);
        putchar('\n');
        BN_print_fp(stdout, b4);
        putchar('\n');
        BN_print_fp(stdout, b5);
        putchar('\n');
        printf("%d %d %d %d %d %d %d\n", BN_is_negative(b1),
               BN_is_negative(b2),
               BN_is_negative(b3), BN_is_negative(b4), BN_is_zero(b4),
               BN_is_negative(b3) != BN_is_negative(b2)
               && (BN_is_negative(b4) || BN_is_zero(b4)),
               BN_cmp(b5, b1));
        puts("----\n");
    }

 done:
    OPENSSL_assert(success);
    ERR_clear_error();

    return 0;
}
