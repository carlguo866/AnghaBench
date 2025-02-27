
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_regular_imgfmt {int dummy; } ;


 int IMGFMT_END ;
 int IMGFMT_START ;
 scalar_t__ mp_get_regular_imgfmt (struct mp_regular_imgfmt*,int) ;
 scalar_t__ regular_imgfmt_equals (struct mp_regular_imgfmt*,struct mp_regular_imgfmt*) ;

int mp_find_regular_imgfmt(struct mp_regular_imgfmt *src)
{
    for (int n = IMGFMT_START + 1; n < IMGFMT_END; n++) {
        struct mp_regular_imgfmt f;
        if (mp_get_regular_imgfmt(&f, n) && regular_imgfmt_equals(src, &f))
            return n;
    }
    return 0;
}
