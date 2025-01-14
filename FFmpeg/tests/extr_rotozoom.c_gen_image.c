
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIXP ;
 int* h_cos ;
 int* h_sin ;
 int ipol (int ,int,int) ;
 int put_pixel (int,int,int ,int ,int ) ;
 int tab_b ;
 int tab_g ;
 int tab_r ;

__attribute__((used)) static void gen_image(int num, int w, int h)
{
    const int c = h_cos[num % 360];
    const int s = h_sin[num % 360];

    const int xi = -(w / 2) * c;
    const int yi = (w / 2) * s;

    const int xj = -(h / 2) * s;
    const int yj = -(h / 2) * c;
    int i, j;

    int x, y;
    int xprime = xj;
    int yprime = yj;

    for (j = 0; j < h; j++) {
        x = xprime + xi + FIXP * w / 2;
        xprime += s;

        y = yprime + yi + FIXP * h / 2;
        yprime += c;

        for (i = 0; i < w; i++) {
            x += c;
            y -= s;
            put_pixel(i, j,
                      ipol(tab_r, x, y),
                      ipol(tab_g, x, y),
                      ipol(tab_b, x, y));
        }
    }
}
