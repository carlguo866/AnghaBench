
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * block; } ;
typedef TYPE_1__ HQContext ;
typedef int GetBitContext ;
typedef int AVFrame ;


 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int hq_decode_block (TYPE_1__*,int *,int ,int,int,int ) ;
 int put_blocks (TYPE_1__*,int *,int,int,int,int,int ,int ) ;

__attribute__((used)) static int hq_decode_mb(HQContext *c, AVFrame *pic,
                        GetBitContext *gb, int x, int y)
{
    int qgroup, flag;
    int i, ret;

    qgroup = get_bits(gb, 4);
    flag = get_bits1(gb);

    for (i = 0; i < 8; i++) {
        ret = hq_decode_block(c, gb, c->block[i], qgroup, i >= 4, 0);
        if (ret < 0)
            return ret;
    }

    put_blocks(c, pic, 0, x, y, flag, c->block[0], c->block[2]);
    put_blocks(c, pic, 0, x + 8, y, flag, c->block[1], c->block[3]);
    put_blocks(c, pic, 2, x >> 1, y, flag, c->block[4], c->block[5]);
    put_blocks(c, pic, 1, x >> 1, y, flag, c->block[6], c->block[7]);

    return 0;
}
