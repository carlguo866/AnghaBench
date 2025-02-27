
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* image; } ;
typedef TYPE_1__ WebPContext ;
struct TYPE_6__ {int size_reduction; int * huffman_groups; int frame; } ;
typedef TYPE_2__ ImageContext ;
typedef int HuffReader ;


 int GET_PIXEL_COMP (int ,int,int,int) ;
 int HUFFMAN_CODES_PER_META_CODE ;
 size_t IMAGE_ROLE_ENTROPY ;

__attribute__((used)) static HuffReader *get_huffman_group(WebPContext *s, ImageContext *img,
                                     int x, int y)
{
    ImageContext *gimg = &s->image[IMAGE_ROLE_ENTROPY];
    int group = 0;

    if (gimg->size_reduction > 0) {
        int group_x = x >> gimg->size_reduction;
        int group_y = y >> gimg->size_reduction;
        int g0 = GET_PIXEL_COMP(gimg->frame, group_x, group_y, 1);
        int g1 = GET_PIXEL_COMP(gimg->frame, group_x, group_y, 2);
        group = g0 << 8 | g1;
    }

    return &img->huffman_groups[group * HUFFMAN_CODES_PER_META_CODE];
}
