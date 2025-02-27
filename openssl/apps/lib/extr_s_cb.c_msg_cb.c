
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_flush (int *) ;
 int BIO_printf (int *,char*,...) ;
 int DTLS1_BAD_VER ;
 int DTLS1_VERSION ;
 int SSL3_VERSION ;
 int TLS1_1_VERSION ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int alert_types ;
 int handshakes ;
 char* lookup (int,int ,char*) ;
 int ssl_versions ;

void msg_cb(int write_p, int version, int content_type, const void *buf,
            size_t len, SSL *ssl, void *arg)
{
    BIO *bio = arg;
    const char *str_write_p = write_p ? ">>>" : "<<<";
    const char *str_version = lookup(version, ssl_versions, "???");
    const char *str_content_type = "", *str_details1 = "", *str_details2 = "";
    const unsigned char* bp = buf;

    if (version == SSL3_VERSION ||
        version == TLS1_VERSION ||
        version == TLS1_1_VERSION ||
        version == TLS1_2_VERSION ||
        version == TLS1_3_VERSION ||
        version == DTLS1_VERSION || version == DTLS1_BAD_VER) {
        switch (content_type) {
        case 20:
            str_content_type = ", ChangeCipherSpec";
            break;
        case 21:
            str_content_type = ", Alert";
            str_details1 = ", ???";
            if (len == 2) {
                switch (bp[0]) {
                case 1:
                    str_details1 = ", warning";
                    break;
                case 2:
                    str_details1 = ", fatal";
                    break;
                }
                str_details2 = lookup((int)bp[1], alert_types, " ???");
            }
            break;
        case 22:
            str_content_type = ", Handshake";
            str_details1 = "???";
            if (len > 0)
                str_details1 = lookup((int)bp[0], handshakes, "???");
            break;
        case 23:
            str_content_type = ", ApplicationData";
            break;
        }
    }

    BIO_printf(bio, "%s %s%s [length %04lx]%s%s\n", str_write_p, str_version,
               str_content_type, (unsigned long)len, str_details1,
               str_details2);

    if (len > 0) {
        size_t num, i;

        BIO_printf(bio, "   ");
        num = len;
        for (i = 0; i < num; i++) {
            if (i % 16 == 0 && i > 0)
                BIO_printf(bio, "\n   ");
            BIO_printf(bio, " %02x", ((const unsigned char *)buf)[i]);
        }
        if (i < len)
            BIO_printf(bio, " ...");
        BIO_printf(bio, "\n");
    }
    (void)BIO_flush(bio);
}
