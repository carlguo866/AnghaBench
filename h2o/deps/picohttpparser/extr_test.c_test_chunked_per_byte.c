
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_chunked_decoder {int consume_trailer; int member_0; } ;
typedef int ssize_t ;


 int bufis (char*,int,char const*) ;
 int free (char*) ;
 char* malloc (int) ;
 int note (char*,int) ;
 int ok (int) ;
 int phr_decode_chunked (struct phr_chunked_decoder*,char*,size_t*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void test_chunked_per_byte(int line, int consume_trailer, const char *encoded, const char *decoded, ssize_t expected)
{
    struct phr_chunked_decoder dec = {0};
    char *buf = malloc(strlen(encoded) + 1);
    size_t bytes_to_consume = strlen(encoded) - (expected >= 0 ? expected : 0), bytes_ready = 0, bufsz, i;
    ssize_t ret;

    dec.consume_trailer = consume_trailer;

    note("testing per-byte, source at line %d", line);

    for (i = 0; i < bytes_to_consume - 1; ++i) {
        buf[bytes_ready] = encoded[i];
        bufsz = 1;
        ret = phr_decode_chunked(&dec, buf + bytes_ready, &bufsz);
        if (ret != -2) {
            ok(0);
            goto cleanup;
        }
        bytes_ready += bufsz;
    }
    strcpy(buf + bytes_ready, encoded + bytes_to_consume - 1);
    bufsz = strlen(buf + bytes_ready);
    ret = phr_decode_chunked(&dec, buf + bytes_ready, &bufsz);
    ok(ret == expected);
    bytes_ready += bufsz;
    ok(bytes_ready == strlen(decoded));
    ok(bufis(buf, bytes_ready, decoded));
    if (expected >= 0) {
        if (ret == expected)
            ok(bufis(buf + bytes_ready, expected, encoded + bytes_to_consume));
        else
            ok(0);
    }

cleanup:
    free(buf);
}
