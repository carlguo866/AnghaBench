
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int srtp_session_t ;
typedef int buf ;


 int EACCES ;
 int EINVAL ;
 int ENOSPC ;
 int SRTP_AUTH_HMAC_SHA1 ;
 int SRTP_ENCR_AES_CM ;
 int SRTP_PRF_AES_CM ;
 int SRTP_RCC_MODE1 ;
 int assert (int) ;
 int memcmp (unsigned int*,char*,int) ;
 int memcpy (unsigned int*,unsigned int*,size_t) ;
 int memset (unsigned int*,int ,size_t) ;
 int * srtp_create (int ,int ,int,int ,int ) ;
 int srtp_destroy (int *) ;
 int srtp_recv (int *,unsigned int*,size_t*) ;
 int srtp_send (int *,unsigned int*,size_t*,int) ;
 int srtp_setkeystring (int *,char const*,char const*) ;
 int srtp_setrcc_rate (int *,int) ;

int main (void)
{
    static const char key[] =
        "123456789ABCDEF0" "123456789ABCDEF0";
    static const char salt[] =
        "1234567890" "1234567890" "12345678";
    int val;
    srtp_session_t *sd, *se;


    se = srtp_create (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 21,
                      SRTP_PRF_AES_CM, 0);
    assert (se == ((void*)0));


    se = srtp_create (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 3,
                      SRTP_PRF_AES_CM, SRTP_RCC_MODE1);
    assert (se == ((void*)0));


    se = srtp_create (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 20,
                      SRTP_PRF_AES_CM, SRTP_RCC_MODE1);
    assert (se != ((void*)0));

    sd = srtp_create (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 20,
                      SRTP_PRF_AES_CM, SRTP_RCC_MODE1);
    assert (sd != ((void*)0));

    srtp_setrcc_rate (se, 1);
    srtp_setrcc_rate (sd, 1);

    val = srtp_setkeystring (se, key, salt);
    assert (val == 0);
    val = srtp_setkeystring (sd, key, salt);
    assert (val == 0);

    uint8_t buf[1500], buf2[1500];
    size_t len;


    len = 12;
    memset (buf, 0, len);
    val = srtp_send (se, buf, &len, sizeof (buf));
    assert (val == EINVAL);

    len = 32;
    memset (buf, 0, len);
    srtp_recv (sd, buf, &len);
    assert (val == EINVAL);


    len = 11;
    buf[0] = 0x80;
    val = srtp_send (se, buf, &len, sizeof (buf));
    assert (val == EINVAL);

    len = 11;
    val = srtp_recv (sd, buf, &len);
    assert (val == EINVAL);


    len = 31;
    val = srtp_recv (sd, buf, &len);
    assert (val == EINVAL);


    len = 15;
    buf[0] = 0x90;
    val = srtp_send (se, buf, &len, sizeof (buf));
    assert (val == EINVAL);

    len = 16;
    buf[0] = 0x90;
    buf[15] = 1;
    val = srtp_send (se, buf, &len, sizeof (buf));
    assert (val == EINVAL);


    len = 20;
    memset (buf, 0, len);
    buf[0] = 0x80;
    buf[3] = 1;
    val = srtp_send (se, buf, &len, 39);
    assert (val == ENOSPC);
    assert (len == 40);

    len = 31;
    val = srtp_recv (sd, buf, &len);
    assert (val == EINVAL);


    buf[0] = 0x80;
    buf[3] = 3;
    for (unsigned i = 0; i < 256; i++)
        buf[i + 12] = i;
    len = 0x10c;
    val = srtp_send (se, buf, &len, 0x120);
    assert (val == 0);
    assert (len == 0x120);

    memcpy (buf2, buf, len);
    val = srtp_recv (sd, buf2, &len);
    assert (val == 0);
    assert (len == 0x10c);
    assert (!memcmp (buf2, "\x80\x00\x00\x03" "\x00\x00\x00\x00"
                           "\x00\x00\x00\x00", 12));
    for (unsigned i = 0; i < 256; i++)
        assert (buf2[i + 12] == i);


    len = 0x120;
    val = srtp_recv (sd, buf, &len);
    assert (val == EACCES);
    assert (len == 0x10c);


    buf[0] = 0x80;
    buf[3] = 2;
    val = srtp_send (se, buf, &len, 0x120);
    assert (val == 0);
    assert (len == 0x120);

    memcpy (buf2, buf, len);
    val = srtp_recv (sd, buf2, &len);
    assert (val == 0);
    assert (len == 0x10c);


    len = 0x120;
    val = srtp_recv (sd, buf, &len);
    assert (val == EACCES);
    assert (len == 0x10c);

    srtp_destroy (se);
    srtp_destroy (sd);
    return 0;
}
