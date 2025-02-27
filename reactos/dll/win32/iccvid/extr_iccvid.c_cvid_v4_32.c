
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * b; int * g; int * r; } ;
typedef TYPE_1__ cvid_codebook ;
typedef int BOOL ;


 int MAKECOLOUR32 (int ,int ,int ) ;

__attribute__((used)) static void cvid_v4_32(unsigned char *frm, unsigned char *limit, int stride, BOOL inverted,
    cvid_codebook *cb0, cvid_codebook *cb1, cvid_codebook *cb2, cvid_codebook *cb3)
{
unsigned long *vptr = (unsigned long *)frm;
int row_inc;
int x, y;
cvid_codebook * cb[] = {cb0,cb1,cb2,cb3};

    if (!inverted)
        row_inc = -stride/4;
    else
        row_inc = stride/4;


    for (y = 0; y < 4; y++)
    {
        if (&vptr[y*row_inc] < (unsigned long *)limit) return;
        for (x = 0; x < 4; x++)
            vptr[y*row_inc + x] = MAKECOLOUR32(cb[x/2+(y/2)*2]->r[x%2+(y%2)*2], cb[x/2+(y/2)*2]->g[x%2+(y%2)*2], cb[x/2+(y/2)*2]->b[x%2+(y%2)*2]);
    }
}
