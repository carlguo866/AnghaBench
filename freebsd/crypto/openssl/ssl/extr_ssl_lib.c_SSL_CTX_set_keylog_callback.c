
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keylog_callback; } ;
typedef int SSL_CTX_keylog_cb_func ;
typedef TYPE_1__ SSL_CTX ;



void SSL_CTX_set_keylog_callback(SSL_CTX *ctx, SSL_CTX_keylog_cb_func cb)
{
    ctx->keylog_callback = cb;
}
