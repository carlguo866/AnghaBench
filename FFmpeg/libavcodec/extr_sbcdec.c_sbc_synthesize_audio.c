
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_frame {int subbands; int channels; int blocks; } ;
struct sbc_decoder_state {int dummy; } ;
typedef int AVFrame ;


 int sbc_synthesize_eight (struct sbc_decoder_state*,struct sbc_frame*,int,int,int *) ;
 int sbc_synthesize_four (struct sbc_decoder_state*,struct sbc_frame*,int,int,int *) ;

__attribute__((used)) static void sbc_synthesize_audio(struct sbc_decoder_state *state,
                                 struct sbc_frame *frame, AVFrame *output_frame)
{
    int ch, blk;

    switch (frame->subbands) {
    case 4:
        for (ch = 0; ch < frame->channels; ch++)
            for (blk = 0; blk < frame->blocks; blk++)
                sbc_synthesize_four(state, frame, ch, blk, output_frame);
        break;

    case 8:
        for (ch = 0; ch < frame->channels; ch++)
            for (blk = 0; blk < frame->blocks; blk++)
                sbc_synthesize_eight(state, frame, ch, blk, output_frame);
        break;
    }
}
