
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct mp_frame {scalar_t__ type; int data; } ;
struct mp_chmap {int dummy; } ;
struct mp_audio_buffer {int dummy; } ;
struct ao_chain {int out_eof; int output_frame; int last_out_pts; TYPE_3__* filter; int ao; struct mp_audio_buffer* ao_buffer; } ;
struct MPContext {int audio_speed; TYPE_1__* opts; } ;
struct TYPE_6__ {TYPE_2__* f; } ;
struct TYPE_5__ {int * pins; } ;
struct TYPE_4__ {double audio_delay; } ;


 int INT_MAX ;
 int MPCLAMP (double,int ,int) ;
 int MP_ERR (struct MPContext*,char*) ;
 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_EOF ;
 double MP_NOPTS_VALUE ;
 int TA_FREEP (int *) ;
 int ao_get_format (int ,int*,int*,struct mp_chmap*) ;
 int mp_aframe_end_pts (int ) ;
 int ** mp_aframe_get_data_ro (int ) ;
 int mp_aframe_get_size (int ) ;
 int mp_aframe_skip_samples (int ,int) ;
 int mp_audio_buffer_append (struct mp_audio_buffer*,void**,int) ;
 int mp_audio_buffer_samples (struct mp_audio_buffer*) ;
 int mp_frame_unref (struct mp_frame*) ;
 struct mp_frame mp_pin_out_read (int ) ;
 double written_audio_pts (struct MPContext*) ;

__attribute__((used)) static bool copy_output(struct MPContext *mpctx, struct ao_chain *ao_c,
                        int minsamples, double endpts, bool *seteof)
{
    struct mp_audio_buffer *outbuf = ao_c->ao_buffer;

    int ao_rate;
    int ao_format;
    struct mp_chmap ao_channels;
    ao_get_format(ao_c->ao, &ao_rate, &ao_format, &ao_channels);

    while (mp_audio_buffer_samples(outbuf) < minsamples) {
        int cursamples = mp_audio_buffer_samples(outbuf);
        int maxsamples = INT_MAX;
        if (endpts != MP_NOPTS_VALUE) {
            double rate = ao_rate / mpctx->audio_speed;
            double curpts = written_audio_pts(mpctx);
            if (curpts != MP_NOPTS_VALUE) {
                double remaining =
                    (endpts - curpts - mpctx->opts->audio_delay) * rate;
                maxsamples = MPCLAMP(remaining, 0, INT_MAX);
            }
        }

        if (!ao_c->output_frame || !mp_aframe_get_size(ao_c->output_frame)) {
            TA_FREEP(&ao_c->output_frame);

            struct mp_frame frame = mp_pin_out_read(ao_c->filter->f->pins[1]);
            if (frame.type == MP_FRAME_AUDIO) {
                ao_c->output_frame = frame.data;
                ao_c->out_eof = 0;
                ao_c->last_out_pts = mp_aframe_end_pts(ao_c->output_frame);
            } else if (frame.type == MP_FRAME_EOF) {
                ao_c->out_eof = 1;
            } else if (frame.type) {
                MP_ERR(mpctx, "unknown frame type\n");
                mp_frame_unref(&frame);
            }
        }


        if (!ao_c->output_frame) {
            if (ao_c->out_eof) {
                *seteof = 1;
                return 1;
            }
            return 0;
        }

        if (cursamples + mp_aframe_get_size(ao_c->output_frame) > maxsamples) {
            if (cursamples < maxsamples) {
                uint8_t **data = mp_aframe_get_data_ro(ao_c->output_frame);
                mp_audio_buffer_append(outbuf, (void **)data,
                                       maxsamples - cursamples);
                mp_aframe_skip_samples(ao_c->output_frame,
                                       maxsamples - cursamples);
            }
            *seteof = 1;
            return 1;
        }

        uint8_t **data = mp_aframe_get_data_ro(ao_c->output_frame);
        mp_audio_buffer_append(outbuf, (void **)data,
                               mp_aframe_get_size(ao_c->output_frame));
        TA_FREEP(&ao_c->output_frame);
    }
    return 1;
}
