
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; int value; int updates; } ;
struct input_stats {int lost_pictures; int displayed_pictures; int decoded_video; int lost_abuffers; int played_abuffers; int decoded_audio; int demux_discontinuity; int demux_corrupted; TYPE_2__ demux_bitrate; TYPE_2__ input_bitrate; } ;
struct TYPE_4__ {void* i_lost_pictures; void* i_displayed_pictures; void* i_decoded_video; void* i_lost_abuffers; void* i_played_abuffers; void* i_decoded_audio; void* i_demux_discontinuity; void* i_demux_corrupted; void* f_demux_bitrate; int i_demux_read_bytes; void* f_input_bitrate; int i_read_bytes; int i_read_packets; } ;
typedef TYPE_1__ input_stats_t ;


 void* atomic_load_explicit (int *,int ) ;
 int memory_order_relaxed ;
 void* stats_GetRate (TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_stats_Compute(struct input_stats *stats, input_stats_t *st)
{

    vlc_mutex_lock(&stats->input_bitrate.lock);
    st->i_read_packets = stats->input_bitrate.updates;
    st->i_read_bytes = stats->input_bitrate.value;
    st->f_input_bitrate = stats_GetRate(&stats->input_bitrate);
    vlc_mutex_unlock(&stats->input_bitrate.lock);

    vlc_mutex_lock(&stats->demux_bitrate.lock);
    st->i_demux_read_bytes = stats->demux_bitrate.value;
    st->f_demux_bitrate = stats_GetRate(&stats->demux_bitrate);
    vlc_mutex_unlock(&stats->demux_bitrate.lock);
    st->i_demux_corrupted = atomic_load_explicit(&stats->demux_corrupted,
                                                 memory_order_relaxed);
    st->i_demux_discontinuity = atomic_load_explicit(
                    &stats->demux_discontinuity, memory_order_relaxed);


    st->i_decoded_audio = atomic_load_explicit(&stats->decoded_audio,
                                               memory_order_relaxed);
    st->i_played_abuffers = atomic_load_explicit(&stats->played_abuffers,
                                                 memory_order_relaxed);
    st->i_lost_abuffers = atomic_load_explicit(&stats->lost_abuffers,
                                               memory_order_relaxed);


    st->i_decoded_video = atomic_load_explicit(&stats->decoded_video,
                                               memory_order_relaxed);
    st->i_displayed_pictures = atomic_load_explicit(&stats->displayed_pictures,
                                                    memory_order_relaxed);
    st->i_lost_pictures = atomic_load_explicit(&stats->lost_pictures,
                                               memory_order_relaxed);
}
