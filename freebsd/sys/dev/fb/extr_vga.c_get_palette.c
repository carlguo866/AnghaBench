
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int u_char ;


 int EINVAL ;
 int ENODEV ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int bzero (int *,int) ;
 int copyout (int *,int *,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 scalar_t__ vga_save_palette2 (int *,int,int,int *,int *,int *) ;

__attribute__((used)) static int
get_palette(video_adapter_t *adp, int base, int count,
     u_char *red, u_char *green, u_char *blue, u_char *trans)
{
    u_char *r;
    u_char *g;
    u_char *b;

    if (count < 0 || base < 0 || count > 256 || base > 256 ||
 base + count > 256)
 return EINVAL;

    r = malloc(count*3, M_DEVBUF, M_WAITOK);
    g = r + count;
    b = g + count;
    if (vga_save_palette2(adp, base, count, r, g, b)) {
 free(r, M_DEVBUF);
 return ENODEV;
    }
    copyout(r, red, count);
    copyout(g, green, count);
    copyout(b, blue, count);
    if (trans != ((void*)0)) {
 bzero(r, count);
 copyout(r, trans, count);
    }
    free(r, M_DEVBUF);

    return 0;
}
