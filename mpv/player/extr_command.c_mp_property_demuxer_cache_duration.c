
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct demux_reader_state {scalar_t__ ts_duration; } ;
struct TYPE_2__ {int demuxer; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int demux_get_reader_state (int ,struct demux_reader_state*) ;
 int m_property_double_ro (int,void*,scalar_t__) ;

__attribute__((used)) static int mp_property_demuxer_cache_duration(void *ctx, struct m_property *prop,
                                              int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->demuxer)
        return M_PROPERTY_UNAVAILABLE;

    struct demux_reader_state s;
    demux_get_reader_state(mpctx->demuxer, &s);

    if (s.ts_duration < 0)
        return M_PROPERTY_UNAVAILABLE;

    return m_property_double_ro(action, arg, s.ts_duration);
}
