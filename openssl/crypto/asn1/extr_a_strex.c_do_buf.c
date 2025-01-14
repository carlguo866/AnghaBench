
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utfbuf ;
typedef int char_io ;


 int ASN1_F_DO_BUF ;
 int ASN1_R_INVALID_BMPSTRING_LENGTH ;
 int ASN1_R_INVALID_UNIVERSALSTRING_LENGTH ;
 unsigned short ASN1_STRFLGS_ESC_2253 ;
 int ASN1err (int ,int ) ;
 int BUF_TYPE_CONVUTF8 ;
 int BUF_TYPE_WIDTH_MASK ;
 unsigned short CHARTYPE_FIRST_ESC_2253 ;
 unsigned short CHARTYPE_LAST_ESC_2253 ;
 int UTF8_getc (unsigned char*,int,unsigned long*) ;
 int UTF8_putc (unsigned char*,int,unsigned long) ;
 int do_esc_char (unsigned long,unsigned short,char*,int *,void*) ;

__attribute__((used)) static int do_buf(unsigned char *buf, int buflen,
                  int type, unsigned short flags, char *quotes, char_io *io_ch,
                  void *arg)
{
    int i, outlen, len, charwidth;
    unsigned short orflags;
    unsigned char *p, *q;
    unsigned long c;

    p = buf;
    q = buf + buflen;
    outlen = 0;
    charwidth = type & BUF_TYPE_WIDTH_MASK;

    switch (charwidth) {
    case 4:
        if (buflen & 3) {
            ASN1err(ASN1_F_DO_BUF, ASN1_R_INVALID_UNIVERSALSTRING_LENGTH);
            return -1;
        }
        break;
    case 2:
        if (buflen & 1) {
            ASN1err(ASN1_F_DO_BUF, ASN1_R_INVALID_BMPSTRING_LENGTH);
            return -1;
        }
        break;
    default:
        break;
    }

    while (p != q) {
        if (p == buf && flags & ASN1_STRFLGS_ESC_2253)
            orflags = CHARTYPE_FIRST_ESC_2253;
        else
            orflags = 0;

        switch (charwidth) {
        case 4:
            c = ((unsigned long)*p++) << 24;
            c |= ((unsigned long)*p++) << 16;
            c |= ((unsigned long)*p++) << 8;
            c |= *p++;
            break;

        case 2:
            c = ((unsigned long)*p++) << 8;
            c |= *p++;
            break;

        case 1:
            c = *p++;
            break;

        case 0:
            i = UTF8_getc(p, buflen, &c);
            if (i < 0)
                return -1;
            buflen -= i;
            p += i;
            break;
        default:
            return -1;
        }
        if (p == q && flags & ASN1_STRFLGS_ESC_2253)
            orflags = CHARTYPE_LAST_ESC_2253;
        if (type & BUF_TYPE_CONVUTF8) {
            unsigned char utfbuf[6];
            int utflen;
            utflen = UTF8_putc(utfbuf, sizeof(utfbuf), c);
            for (i = 0; i < utflen; i++) {






                len = do_esc_char(utfbuf[i], flags | orflags, quotes,
                                  io_ch, arg);
                if (len < 0)
                    return -1;
                outlen += len;
            }
        } else {
            len = do_esc_char(c, flags | orflags, quotes,
                              io_ch, arg);
            if (len < 0)
                return -1;
            outlen += len;
        }
    }
    return outlen;
}
