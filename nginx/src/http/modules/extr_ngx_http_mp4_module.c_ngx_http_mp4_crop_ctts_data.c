
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_11__ {int count; int offset; } ;
typedef TYPE_3__ ngx_mp4_ctts_entry_t ;
struct TYPE_12__ {scalar_t__ start_sample; scalar_t__ end_sample; int composition_offset_entries; TYPE_1__* out; } ;
typedef TYPE_4__ ngx_http_mp4_trak_t ;
struct TYPE_10__ {int log; } ;
struct TYPE_13__ {TYPE_2__ file; scalar_t__ length; } ;
typedef TYPE_5__ ngx_http_mp4_file_t ;
struct TYPE_14__ {int * last; int * pos; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_9__ {TYPE_6__* buf; } ;


 size_t NGX_HTTP_MP4_CTTS_DATA ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_debug3 (int ,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ngx_mp4_get_32value (int ) ;
 int ngx_mp4_set_32value (int ,scalar_t__) ;

__attribute__((used)) static void
ngx_http_mp4_crop_ctts_data(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak, ngx_uint_t start)
{
    uint32_t count, start_sample, rest;
    ngx_buf_t *data;
    ngx_uint_t entries;
    ngx_mp4_ctts_entry_t *entry, *end;



    if (start) {
        start_sample = trak->start_sample + 1;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 ctts crop start_sample:%uD", start_sample);

    } else if (mp4->length) {
        start_sample = trak->end_sample - trak->start_sample + 1;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 ctts crop end_sample:%uD", start_sample);

    } else {
        return;
    }

    data = trak->out[NGX_HTTP_MP4_CTTS_DATA].buf;

    entries = trak->composition_offset_entries;
    entry = (ngx_mp4_ctts_entry_t *) data->pos;
    end = (ngx_mp4_ctts_entry_t *) data->last;

    while (entry < end) {
        count = ngx_mp4_get_32value(entry->count);

        ngx_log_debug3(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "sample:%uD, count:%uD, offset:%uD",
                       start_sample, count, ngx_mp4_get_32value(entry->offset));

        if (start_sample <= count) {
            rest = start_sample - 1;
            goto found;
        }

        start_sample -= count;
        entries--;
        entry++;
    }

    if (start) {
        data->pos = (u_char *) end;
        trak->composition_offset_entries = 0;
    }

    return;

found:

    if (start) {
        ngx_mp4_set_32value(entry->count, count - rest);
        data->pos = (u_char *) entry;
        trak->composition_offset_entries = entries;

    } else {
        ngx_mp4_set_32value(entry->count, rest);
        data->last = (u_char *) (entry + 1);
        trak->composition_offset_entries -= entries - 1;
    }
}
