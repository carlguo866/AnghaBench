
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_iconv_t ;


 scalar_t__ E2BIG ;
 scalar_t__ EILSEQ ;
 scalar_t__ errno ;
 int free (void*) ;
 void* malloc (size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 size_t vlc_iconv (scalar_t__,char const**,size_t*,char**,size_t*) ;
 int vlc_iconv_close (scalar_t__) ;
 scalar_t__ vlc_iconv_open (char const*,char*) ;

void *ToCharset(const char *charset, const char *in, size_t *outsize)
{
    vlc_iconv_t hd = vlc_iconv_open (charset, "UTF-8");
    if (hd == (vlc_iconv_t)(-1))
        return ((void*)0);

    const size_t inlen = strlen (in);
    void *res;

    for (unsigned mul = 4; mul < 16; mul++)
    {
        size_t outlen = mul * (inlen + 1);
        res = malloc (outlen);
        if (unlikely(res == ((void*)0)))
            break;

        const char *inp = in;
        char *outp = res;
        size_t inb = inlen;
        size_t outb = outlen - mul;

        if (vlc_iconv (hd, &inp, &inb, &outp, &outb) != (size_t)(-1))
        {
            *outsize = outlen - mul - outb;
            outb += mul;
            inb = 1;
            if (vlc_iconv (hd, &inp, &inb, &outp, &outb) != (size_t)(-1))
                break;
            if (errno == EILSEQ)
                break;
        }

        free (res);
        res = ((void*)0);
        if (errno != E2BIG)
            break;
    }
    vlc_iconv_close (hd);
    return res;
}
