
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {int bias; struct TYPE_8__** child; int flags; TYPE_1__ mv; } ;
typedef TYPE_2__ TileInfo ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_3__ MV ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int av_freep (TYPE_2__**) ;
 int tile_do_block (int *,int *,int *,int,int,int,scalar_t__,scalar_t__,int,int ) ;

__attribute__((used)) static int restore_tree(AVCodecContext *avctx, AVFrame *dst, AVFrame *src,
                        int plane, int x, int y, int size,
                        TileInfo *tile, MV root_mv)
{
    int ret;
    MV mv;

    mv.x = root_mv.x + tile->mv.x;
    mv.y = root_mv.y + tile->mv.y;

    if (!tile->flags) {
        ret = tile_do_block(avctx, dst, src, plane, x, y, mv.x, mv.y, size, tile->bias);
    } else {
        int i, hsize = size >> 1;

        for (i = 0; i < 4; i++) {
            int xoff = (i & 2) == 0 ? 0 : hsize;
            int yoff = (i & 1) == 0 ? 0 : hsize;

            if (tile->child[i]) {
                ret = restore_tree(avctx, dst, src, plane, x + xoff, y + yoff, hsize, tile->child[i], root_mv);
                av_freep(&tile->child[i]);
            } else {
                ret = tile_do_block(avctx, dst, src, plane, x + xoff, y + yoff, mv.x, mv.y, hsize, tile->bias);
            }
        }
    }

    return ret;
}
