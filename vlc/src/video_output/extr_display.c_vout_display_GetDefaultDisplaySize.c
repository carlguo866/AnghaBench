
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {unsigned int num; unsigned int den; } ;
struct TYPE_8__ {unsigned int num; unsigned int den; } ;
struct TYPE_9__ {unsigned int width; unsigned int height; TYPE_1__ sar; } ;
struct TYPE_11__ {TYPE_3__ zoom; TYPE_2__ display; } ;
typedef TYPE_4__ vout_display_cfg_t ;
struct TYPE_12__ {unsigned int i_visible_height; unsigned int i_sar_den; unsigned int i_visible_width; unsigned int i_sar_num; int orientation; } ;
typedef TYPE_5__ video_format_t ;
typedef unsigned int int64_t ;


 scalar_t__ ORIENT_IS_SWAP (int ) ;

void vout_display_GetDefaultDisplaySize(unsigned *width, unsigned *height,
                                        const video_format_t *source,
                                        const vout_display_cfg_t *cfg)
{
    if (cfg->display.width != 0 && cfg->display.height != 0) {
        *width = cfg->display.width;
        *height = cfg->display.height;
    } else if (cfg->display.width != 0) {
        *width = cfg->display.width;
        *height = (int64_t)source->i_visible_height * source->i_sar_den * cfg->display.width * cfg->display.sar.num /
            source->i_visible_width / source->i_sar_num / cfg->display.sar.den;
    } else if (cfg->display.height != 0) {
        *width = (int64_t)source->i_visible_width * source->i_sar_num * cfg->display.height * cfg->display.sar.den /
            source->i_visible_height / source->i_sar_den / cfg->display.sar.num;
        *height = cfg->display.height;
    } else if (source->i_sar_num >= source->i_sar_den) {
        *width = (int64_t)source->i_visible_width * source->i_sar_num * cfg->display.sar.den / source->i_sar_den / cfg->display.sar.num;
        *height = source->i_visible_height;
    } else {
        *width = source->i_visible_width;
        *height = (int64_t)source->i_visible_height * source->i_sar_den * cfg->display.sar.num / source->i_sar_num / cfg->display.sar.den;
    }

    *width = *width * cfg->zoom.num / cfg->zoom.den;
    *height = *height * cfg->zoom.num / cfg->zoom.den;

    if (ORIENT_IS_SWAP(source->orientation)) {

        unsigned store = *width;
        *width = *height;
        *height = store;
    }
}
