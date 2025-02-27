
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tls_crypt_context {int source; int unwrapped; int co; int ciphertext; } ;


 scalar_t__ BLEN (int *) ;
 int BPTR (int *) ;
 int assert_int_equal (scalar_t__,scalar_t__) ;
 int assert_memory_equal (int ,int ,scalar_t__) ;
 int assert_true (int) ;
 int skip_if_tls_crypt_not_supported (struct test_tls_crypt_context*) ;
 int tls_crypt_unwrap (int *,int *,int *) ;
 int tls_crypt_wrap (int *,int *,int *) ;

__attribute__((used)) static void
tls_crypt_loopback(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    skip_if_tls_crypt_not_supported(ctx);

    assert_true(tls_crypt_wrap(&ctx->source, &ctx->ciphertext, &ctx->co));
    assert_true(BLEN(&ctx->source) < BLEN(&ctx->ciphertext));
    assert_true(tls_crypt_unwrap(&ctx->ciphertext, &ctx->unwrapped, &ctx->co));
    assert_int_equal(BLEN(&ctx->source), BLEN(&ctx->unwrapped));
    assert_memory_equal(BPTR(&ctx->source), BPTR(&ctx->unwrapped),
                        BLEN(&ctx->source));
}
