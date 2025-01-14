
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int rows; int image_height; int cols; int image_width; int block_width; int block_height; int blocks_size; int palette_type; int avctx; int palette; scalar_t__ use_custom_palette; scalar_t__ use15_7; int blockbuffer; int blockbuffer_size; int keybuffer; void* key_blocks; int databuffer; int encbuffer; void* frame_blocks; } ;
typedef TYPE_1__ FlashSV2Context ;
typedef int Block ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_fast_malloc (int *,int *,int) ;
 int av_log (int ,int ,char*) ;
 void* av_realloc_array (void*,int,int) ;
 int generate_default_palette (int *) ;
 int generate_optimum_palette (int *,int const*,int,int,int) ;
 int init_blocks (TYPE_1__*,void*,int ,int ) ;
 int optimum_block_height (TYPE_1__*) ;
 int optimum_block_width (TYPE_1__*) ;
 scalar_t__ optimum_use15_7 (TYPE_1__*) ;
 int reset_stats (TYPE_1__*) ;

__attribute__((used)) static int reconfigure_at_keyframe(FlashSV2Context * s, const uint8_t * image,
                                   int stride)
{
    int update_palette = 0;
    int res;
    int block_width = optimum_block_width (s);
    int block_height = optimum_block_height(s);

    s->rows = (s->image_height + block_height - 1) / block_height;
    s->cols = (s->image_width + block_width - 1) / block_width;

    if (block_width != s->block_width || block_height != s->block_height) {
        s->block_width = block_width;
        s->block_height = block_height;
        if (s->rows * s->cols > s->blocks_size / sizeof(Block)) {
            s->frame_blocks = av_realloc_array(s->frame_blocks, s->rows, s->cols * sizeof(Block));
            s->key_blocks = av_realloc_array(s->key_blocks, s->cols, s->rows * sizeof(Block));
            if (!s->frame_blocks || !s->key_blocks) {
                av_log(s->avctx, AV_LOG_ERROR, "Memory allocation failed.\n");
                return -1;
            }
            s->blocks_size = s->rows * s->cols * sizeof(Block);
        }
        init_blocks(s, s->frame_blocks, s->encbuffer, s->databuffer);
        init_blocks(s, s->key_blocks, s->keybuffer, 0);

        av_fast_malloc(&s->blockbuffer, &s->blockbuffer_size, block_width * block_height * 6);
        if (!s->blockbuffer) {
            av_log(s->avctx, AV_LOG_ERROR, "Could not allocate block buffer.\n");
            return AVERROR(ENOMEM);
        }
    }

    s->use15_7 = optimum_use15_7(s);
    if (s->use15_7) {
        if ((s->use_custom_palette && s->palette_type != 1) || update_palette) {
            res = generate_optimum_palette(&s->palette, image, s->image_width, s->image_height, stride);
            if (res)
                return res;
            s->palette_type = 1;
            av_log(s->avctx, AV_LOG_DEBUG, "Generated optimum palette\n");
        } else if (!s->use_custom_palette && s->palette_type != 0) {
            res = generate_default_palette(&s->palette);
            if (res)
                return res;
            s->palette_type = 0;
            av_log(s->avctx, AV_LOG_DEBUG, "Generated default palette\n");
        }
    }


    reset_stats(s);

    return 0;
}
