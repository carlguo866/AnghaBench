
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err_if (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int,int,int) ;
 int free (unsigned char*) ;
 int fwrite (unsigned char*,int,int,int *) ;
 unsigned char* malloc (int) ;
 int rgb24_to_yuv420p (unsigned char*,unsigned char*,unsigned char*,unsigned char const*,int,int) ;
 int * stdout ;

__attribute__((used)) static void pgmyuv_save(const char *filename, int w, int h,
                        const unsigned char *rgb_tab)
{
    FILE *f;
    int i, h2, w2;
    unsigned char *cb, *cr;
    unsigned char *lum_tab, *cb_tab, *cr_tab;

    lum_tab = malloc(w * h);
    cb_tab = malloc(w * h / 4);
    cr_tab = malloc(w * h / 4);

    rgb24_to_yuv420p(lum_tab, cb_tab, cr_tab, rgb_tab, w, h);

    if (filename) {
        f = fopen(filename, "wb");
        fprintf(f, "P5\n%d %d\n%d\n", w, h * 3 / 2, 255);
    } else {
        f = stdout;
    }

    err_if(fwrite(lum_tab, 1, w * h, f) != w * h);
    h2 = h / 2;
    w2 = w / 2;
    cb = cb_tab;
    cr = cr_tab;

    if (filename) {
        for (i = 0; i < h2; i++) {
            err_if(fwrite(cb, 1, w2, f) != w2);
            err_if(fwrite(cr, 1, w2, f) != w2);
            cb += w2;
            cr += w2;
        }
        fclose(f);
    } else {
        for (i = 0; i < h2; i++) {
            err_if(fwrite(cb, 1, w2, f) != w2);
            cb += w2;
        }
        for (i = 0; i < h2; i++) {
            err_if(fwrite(cr, 1, w2, f) != w2);
            cr += w2;
        }
    }

    free(lum_tab);
    free(cb_tab);
    free(cr_tab);
}
