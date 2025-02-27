
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
struct TYPE_6__ {int reset; int options; TYPE_1__ counter; int last; scalar_t__ count; int name; } ;
typedef TYPE_2__ STATSD_METRIC ;


 int D_STATSD ;
 int STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED ;
 int STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED ;
 int debug (int ,char*,char const*,int ) ;
 int statsd_private_chart_counter_or_meter (TYPE_2__*,char const*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void statsd_flush_counter_or_meter(STATSD_METRIC *m, const char *dim, const char *family) {
    debug(D_STATSD, "flushing %s metric '%s'", dim, m->name);

    int updated = 0;
    if(unlikely(!m->reset && m->count)) {
        m->last = m->counter.value;

        m->reset = 1;
        updated = 1;
    }

    if(unlikely(m->options & STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED && (updated || !(m->options & STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED))))
        statsd_private_chart_counter_or_meter(m, dim, family);
}
