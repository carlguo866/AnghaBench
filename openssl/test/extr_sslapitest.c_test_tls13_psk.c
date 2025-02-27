
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int SSL_CTX ;
typedef int SSL_CIPHER ;
typedef int SSL ;


 int * SSL_CIPHER_find (int *,int ) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_ciphersuites (int *,char*) ;
 int SSL_CTX_set_psk_client_callback (int *,int ) ;
 int SSL_CTX_set_psk_find_session_callback (int *,int ) ;
 int SSL_CTX_set_psk_server_callback (int *,int ) ;
 int SSL_CTX_set_psk_use_session_callback (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_SESSION_free (int const*) ;
 int * SSL_SESSION_new () ;
 int SSL_SESSION_set1_master_key (int const*,unsigned char const*,int) ;
 int SSL_SESSION_set_cipher (int const*,int const*) ;
 int SSL_SESSION_set_protocol_version (int const*,int ) ;
 int SSL_SESSION_up_ref (int const*) ;
 int SSL_free (int *) ;
 int SSL_session_reused (int *) ;
 int SSL_set1_groups_list (int *,char*) ;
 int TEST_false (int) ;
 int TEST_ptr (int const*) ;
 int TEST_true (int) ;
 int TLS13_AES_128_GCM_SHA256_BYTES ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int * cert ;
 int const* clientpsk ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int *,int *) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int find_session_cb ;
 int find_session_cb_cnt ;
 int * privkey ;
 int psk_client_cb ;
 int psk_client_cb_cnt ;
 int psk_server_cb ;
 int psk_server_cb_cnt ;
 char* pskid ;
 int const* serverpsk ;
 int shutdown_ssl_connection (int *,int *) ;
 char* srvid ;
 int use_session_cb ;
 int use_session_cb_cnt ;

__attribute__((used)) static int test_tls13_psk(int idx)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    const SSL_CIPHER *cipher = ((void*)0);
    const unsigned char key[] = {
        0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b,
        0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
        0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23,
        0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f
    };
    int testresult = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, idx == 3 ? ((void*)0) : cert,
                                       idx == 3 ? ((void*)0) : privkey)))
        goto end;

    if (idx != 3) {






        if (!TEST_true(SSL_CTX_set_ciphersuites(cctx,
                                                "TLS_AES_128_GCM_SHA256")))
            goto end;
    }






    if (idx == 0 || idx == 1) {
        SSL_CTX_set_psk_use_session_callback(cctx, use_session_cb);
        SSL_CTX_set_psk_find_session_callback(sctx, find_session_cb);
    }

    if (idx >= 1) {
        SSL_CTX_set_psk_client_callback(cctx, psk_client_cb);
        SSL_CTX_set_psk_server_callback(sctx, psk_server_cb);
    }

    srvid = pskid;
    use_session_cb_cnt = 0;
    find_session_cb_cnt = 0;
    psk_client_cb_cnt = 0;
    psk_server_cb_cnt = 0;

    if (idx != 3) {




        if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                                 ((void*)0), ((void*)0)))
                || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                    SSL_ERROR_NONE))
                || !TEST_false(SSL_session_reused(clientssl))
                || !TEST_false(SSL_session_reused(serverssl)))
            goto end;

        if (idx == 0 || idx == 1) {
            if (!TEST_true(use_session_cb_cnt == 1)
                    || !TEST_true(find_session_cb_cnt == 0)




                    || !TEST_true(psk_client_cb_cnt == idx)
                    || !TEST_true(psk_server_cb_cnt == 0))
                goto end;
        } else {
            if (!TEST_true(use_session_cb_cnt == 0)
                    || !TEST_true(find_session_cb_cnt == 0)
                    || !TEST_true(psk_client_cb_cnt == 1)
                    || !TEST_true(psk_server_cb_cnt == 0))
                goto end;
        }

        shutdown_ssl_connection(serverssl, clientssl);
        serverssl = clientssl = ((void*)0);
        use_session_cb_cnt = psk_client_cb_cnt = 0;
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0))))
        goto end;


    cipher = SSL_CIPHER_find(clientssl, TLS13_AES_128_GCM_SHA256_BYTES);
    clientpsk = SSL_SESSION_new();
    if (!TEST_ptr(clientpsk)
            || !TEST_ptr(cipher)
            || !TEST_true(SSL_SESSION_set1_master_key(clientpsk, key,
                                                      sizeof(key)))
            || !TEST_true(SSL_SESSION_set_cipher(clientpsk, cipher))
            || !TEST_true(SSL_SESSION_set_protocol_version(clientpsk,
                                                           TLS1_3_VERSION))
            || !TEST_true(SSL_SESSION_up_ref(clientpsk)))
        goto end;
    serverpsk = clientpsk;


    if (!TEST_true(create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE))
            || !TEST_true(SSL_session_reused(clientssl))
            || !TEST_true(SSL_session_reused(serverssl)))
        goto end;

    if (idx == 0 || idx == 1) {
        if (!TEST_true(use_session_cb_cnt == 1)
                || !TEST_true(find_session_cb_cnt == 1)
                || !TEST_true(psk_client_cb_cnt == 0)
                || !TEST_true(psk_server_cb_cnt == 0))
            goto end;
    } else {
        if (!TEST_true(use_session_cb_cnt == 0)
                || !TEST_true(find_session_cb_cnt == 0)
                || !TEST_true(psk_client_cb_cnt == 1)
                || !TEST_true(psk_server_cb_cnt == 1))
            goto end;
    }

    shutdown_ssl_connection(serverssl, clientssl);
    serverssl = clientssl = ((void*)0);
    use_session_cb_cnt = find_session_cb_cnt = 0;
    psk_client_cb_cnt = psk_server_cb_cnt = 0;

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0))))
        goto end;






    if (!TEST_true(SSL_set1_groups_list(serverssl, "P-256")))
        goto end;






    if (!TEST_true(create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE))
            || !TEST_true(SSL_session_reused(clientssl))
            || !TEST_true(SSL_session_reused(serverssl)))
        goto end;

    if (idx == 0 || idx == 1) {
        if (!TEST_true(use_session_cb_cnt == 2)
                || !TEST_true(find_session_cb_cnt == 2)
                || !TEST_true(psk_client_cb_cnt == 0)
                || !TEST_true(psk_server_cb_cnt == 0))
            goto end;
    } else {
        if (!TEST_true(use_session_cb_cnt == 0)
                || !TEST_true(find_session_cb_cnt == 0)
                || !TEST_true(psk_client_cb_cnt == 2)
                || !TEST_true(psk_server_cb_cnt == 2))
            goto end;
    }

    shutdown_ssl_connection(serverssl, clientssl);
    serverssl = clientssl = ((void*)0);
    use_session_cb_cnt = find_session_cb_cnt = 0;
    psk_client_cb_cnt = psk_server_cb_cnt = 0;

    if (idx != 3) {




        srvid = "Dummy Identity";
        if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                                 ((void*)0), ((void*)0)))
                || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                    SSL_ERROR_NONE))
                || !TEST_false(SSL_session_reused(clientssl))
                || !TEST_false(SSL_session_reused(serverssl)))
            goto end;

        if (idx == 0 || idx == 1) {
            if (!TEST_true(use_session_cb_cnt == 1)
                    || !TEST_true(find_session_cb_cnt == 1)
                    || !TEST_true(psk_client_cb_cnt == 0)




                    || !TEST_true(psk_server_cb_cnt == idx))
                goto end;
        } else {
            if (!TEST_true(use_session_cb_cnt == 0)
                    || !TEST_true(find_session_cb_cnt == 0)
                    || !TEST_true(psk_client_cb_cnt == 1)
                    || !TEST_true(psk_server_cb_cnt == 1))
                goto end;
        }

        shutdown_ssl_connection(serverssl, clientssl);
        serverssl = clientssl = ((void*)0);
    }
    testresult = 1;

 end:
    SSL_SESSION_free(clientpsk);
    SSL_SESSION_free(serverpsk);
    clientpsk = serverpsk = ((void*)0);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;
}
