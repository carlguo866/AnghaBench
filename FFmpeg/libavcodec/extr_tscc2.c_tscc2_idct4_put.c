
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COL_OP ;
 int DCT1D (int,int,int,int,int,int,int,int,int ) ;
 int DEQUANT (int,int) ;
 int ROW_OP ;

__attribute__((used)) static void tscc2_idct4_put(int *in, int q[3], uint8_t *dst, int stride)
{
    int i;
    int tblk[4 * 4];
    int t0, t1, t2, t3;

    for (i = 0; i < 4; i++) {
        t0 = DEQUANT(q[0 + (i & 1)], in[0 * 4 + i]);
        t1 = DEQUANT(q[1 + (i & 1)], in[1 * 4 + i]);
        t2 = DEQUANT(q[0 + (i & 1)], in[2 * 4 + i]);
        t3 = DEQUANT(q[1 + (i & 1)], in[3 * 4 + i]);
        DCT1D(tblk[0 * 4 + i], tblk[1 * 4 + i],
              tblk[2 * 4 + i], tblk[3 * 4 + i],
              t0, t1, t2, t3, COL_OP);
    }
    for (i = 0; i < 4; i++) {
        DCT1D(dst[0], dst[1], dst[2], dst[3],
              tblk[i * 4 + 0], tblk[i * 4 + 1],
              tblk[i * 4 + 2], tblk[i * 4 + 3], ROW_OP);
        dst += stride;
    }
}
