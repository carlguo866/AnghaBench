
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int DEFAULT_HEIGHT ;
 int DEFAULT_NB_PICT ;
 int DEFAULT_WIDTH ;
 int atoi (char*) ;
 int free (int ) ;
 int freopen (char*,char*,int ) ;
 int gen_image (int,int,int) ;
 int height ;
 int malloc (int) ;
 int pgmyuv_save (char*,int,int,int ) ;
 int print_help (char*) ;
 int rgb_tab ;
 int snprintf (char*,int,char*,char*,int) ;
 int stdout ;
 int width ;
 int wrap ;

int main(int argc, char **argv)
{
    int w, h, i;
    char buf[1024];
    int isdir = 0;

    if (argc < 2 || argc > 4) {
        print_help(argv[0]);
    }

    if (!freopen(argv[1], "wb", stdout))
        isdir = 1;

    w = DEFAULT_WIDTH;
    if(argc > 2) {
        w = atoi(argv[2]);
        if (w < 1) print_help(argv[0]);
    }
    h = DEFAULT_HEIGHT;
    if(argc > 3) {
        h = atoi(argv[3]);
        if (h < 1) print_help(argv[0]);
    }

    rgb_tab = malloc(w * h * 3);
    wrap = w * 3;
    width = w;
    height = h;

    for (i = 0; i < DEFAULT_NB_PICT; i++) {
        gen_image(i, w, h);
        if (isdir) {
            snprintf(buf, sizeof(buf), "%s%02d.pgm", argv[1], i);
            pgmyuv_save(buf, w, h, rgb_tab);
        } else {
            pgmyuv_save(((void*)0), w, h, rgb_tab);
        }
    }

    free(rgb_tab);
    return 0;
}
