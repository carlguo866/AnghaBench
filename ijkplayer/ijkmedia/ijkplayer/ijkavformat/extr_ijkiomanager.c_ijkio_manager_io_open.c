
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_18__ {int ijkio_interrupt_callback; scalar_t__ cache_info_map; int cache_file_path; } ;
struct TYPE_17__ {int value; } ;
struct TYPE_16__ {int auto_save_map; scalar_t__ cur_ffmpeg_ctx; scalar_t__ ijk_ctx_map; TYPE_8__* ijkio_app_ctx; int ijkio_interrupt_callback; int cache_map_path; } ;
struct TYPE_15__ {struct TYPE_15__* priv_data; TYPE_1__* prot; int state; TYPE_8__* ijkio_app_ctx; } ;
struct TYPE_14__ {int (* url_open2 ) (TYPE_2__*,char const*,int,int **) ;int (* url_close ) (TYPE_2__*) ;} ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOManagerContext ;
typedef TYPE_4__ IjkAVDictionaryEntry ;
typedef int IjkAVDictionary ;


 int IJKURL_STARTED ;
 int IJK_AV_DICT_MATCH_CASE ;
 TYPE_4__* ijk_av_dict_get (int *,char*,int *,int ) ;
 int ijk_av_freep (TYPE_2__**) ;
 int ijk_map_put (scalar_t__,int ,TYPE_2__*) ;
 int ijk_map_remove (scalar_t__,int ) ;
 int ijk_map_size (scalar_t__) ;
 int ijkio_alloc_url (TYPE_2__**,char const*) ;
 int ijkio_manager_parse_cache_info (TYPE_8__*,int ) ;
 int ijkio_manager_set_all_ctx_pause (TYPE_3__*) ;
 int strcpy (int ,int ) ;
 scalar_t__ strtol (int ,int *,int) ;
 int stub1 (TYPE_2__*,char const*,int,int **) ;
 int stub2 (TYPE_2__*) ;

int ijkio_manager_io_open(IjkIOManagerContext *h, const char *url, int flags, IjkAVDictionary **options) {
    int ret = -1;
    int parse_cache_map_file = 0;
    if (!h)
        return ret;

    if (!h->ijkio_app_ctx) {
        return -1;
    }

    IjkAVDictionaryEntry *t = ((void*)0);
    t = ijk_av_dict_get(*options, "cache_file_path", ((void*)0), IJK_AV_DICT_MATCH_CASE);
    if (t) {
        strcpy(h->ijkio_app_ctx->cache_file_path, t->value);
    }

    t = ijk_av_dict_get(*options, "cache_map_path", ((void*)0), IJK_AV_DICT_MATCH_CASE);
    if (t) {
        strcpy(h->cache_map_path, t->value);

        t = ijk_av_dict_get(*options, "auto_save_map", ((void*)0), IJK_AV_DICT_MATCH_CASE);
        if (t) {
            h->auto_save_map = (int)strtol(t->value, ((void*)0), 10);
        }

        if (h->ijkio_app_ctx->cache_info_map && !ijk_map_size(h->ijkio_app_ctx->cache_info_map)) {
            t = ijk_av_dict_get(*options, "parse_cache_map", ((void*)0), IJK_AV_DICT_MATCH_CASE);
            if (t) {
                parse_cache_map_file = (int)strtol(t->value, ((void*)0), 10);
                if (parse_cache_map_file) {
                    ijkio_manager_parse_cache_info(h->ijkio_app_ctx, h->cache_map_path);
                }
            }
        }
    }

    h->ijkio_app_ctx->ijkio_interrupt_callback = h->ijkio_interrupt_callback;

    IjkURLContext *inner = ((void*)0);
    ijkio_alloc_url(&inner, url);
    if (inner) {
        inner->ijkio_app_ctx = h->ijkio_app_ctx;
        if (h->ijk_ctx_map) {
            ijkio_manager_set_all_ctx_pause(h);
            inner->state = IJKURL_STARTED;
            ijk_map_put(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx, inner);
        }
        ret = inner->prot->url_open2(inner, url, flags, options);
        if (ret != 0)
            goto fail;

        return ret;
    }

fail:
    if (inner) {
        if (inner->prot && inner->prot->url_close)
            ret = inner->prot->url_close(inner);

        if (h->ijk_ctx_map) {
            ijk_map_remove(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx);
        }
        ijk_av_freep(&inner->priv_data);
        ijk_av_freep(&inner);
    }
    return -1;
}
