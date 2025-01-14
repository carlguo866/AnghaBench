
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct sbg_script {int nb_tseq; int start_ts; int end_ts; int opt_duration; TYPE_2__* tseq; scalar_t__ opt_start_at_first; } ;
typedef int int64_t ;
struct TYPE_3__ {char type; int t; } ;
struct TYPE_4__ {TYPE_1__ ts; } ;


 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 int AV_NOPTS_VALUE ;
 int AV_TIME_BASE ;
 int DAY ;
 scalar_t__ DAY_TS ;
 int av_log (void*,int ,char*,...) ;
 struct tm* localtime_r (int*,struct tm*) ;
 int time (int*) ;

__attribute__((used)) static void expand_timestamps(void *log, struct sbg_script *s)
{
    int i, nb_rel = 0;
    int64_t now, cur_ts, delta = 0;

    for (i = 0; i < s->nb_tseq; i++)
        nb_rel += s->tseq[i].ts.type == 'N';
    if (nb_rel == s->nb_tseq) {

        now = 0;
        if (s->start_ts != AV_NOPTS_VALUE)
            av_log(log, AV_LOG_WARNING,
                   "Start time ignored in a purely relative script.\n");
    } else if (nb_rel == 0 && s->start_ts != AV_NOPTS_VALUE ||
               s->opt_start_at_first) {

        if (s->start_ts == AV_NOPTS_VALUE)
            s->start_ts = s->tseq[0].ts.t;
        now = s->start_ts;
    } else {

        time_t now0;
        struct tm *tm, tmpbuf;

        av_log(log, AV_LOG_WARNING,
               "Scripts with mixed absolute and relative timestamps can give "
               "unexpected results (pause, seeking, time zone change).\n");

        time(&now0);
        tm = localtime_r(&now0, &tmpbuf);
        now = tm ? tm->tm_hour * 3600 + tm->tm_min * 60 + tm->tm_sec :
                   now0 % DAY;
        av_log(log, AV_LOG_INFO, "Using %02d:%02d:%02d as NOW.\n",
               (int)(now / 3600), (int)(now / 60) % 60, (int)now % 60);
        now *= AV_TIME_BASE;
        for (i = 0; i < s->nb_tseq; i++) {
            if (s->tseq[i].ts.type == 'N') {
                s->tseq[i].ts.t += now;
                s->tseq[i].ts.type = 'T';
            }
        }
    }
    if (s->start_ts == AV_NOPTS_VALUE)
        s->start_ts = (s->opt_start_at_first && s->tseq) ? s->tseq[0].ts.t : now;
    s->end_ts = s->opt_duration ? s->start_ts + s->opt_duration :
                AV_NOPTS_VALUE;
    cur_ts = now;
    for (i = 0; i < s->nb_tseq; i++) {
        if (s->tseq[i].ts.t + delta < cur_ts)
            delta += DAY_TS;
        cur_ts = s->tseq[i].ts.t += delta;
    }
}
