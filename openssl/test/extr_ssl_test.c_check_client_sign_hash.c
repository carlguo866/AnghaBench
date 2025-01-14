
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int client_sign_hash; } ;
struct TYPE_5__ {int expected_client_sign_hash; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int check_nid (char*,int ,int ) ;

__attribute__((used)) static int check_client_sign_hash(HANDSHAKE_RESULT *result,
                                  SSL_TEST_CTX *test_ctx)
{
    return check_nid("Client signing hash", test_ctx->expected_client_sign_hash,
                     result->client_sign_hash);
}
