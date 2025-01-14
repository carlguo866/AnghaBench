
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum Mode { ____Placeholder_Mode } Mode ;
struct TYPE_6__ {int (* acelp_interpolatef ) (float*,float*,int ,int,int,int ,int) ;} ;
struct TYPE_8__ {float* excitation; int fr_cur_mode; int pitch_lag_int; float* pitch_vector; TYPE_1__ acelpf_ctx; int base_pitch_lag; } ;
struct TYPE_7__ {scalar_t__ ltp; int adap; } ;
typedef TYPE_2__ AMRWBSubFrame ;
typedef TYPE_3__ AMRWBContext ;


 int AMRWB_SFR_SIZE ;
 int LP_ORDER ;
 int MODE_8k85 ;
 int ac_inter ;
 int decode_pitch_lag_high (int*,int*,int ,int *,int const) ;
 int decode_pitch_lag_low (int*,int*,int ,int *,int const,int) ;
 int memcpy (float*,float*,int) ;
 int stub1 (float*,float*,int ,int,int,int ,int) ;

__attribute__((used)) static void decode_pitch_vector(AMRWBContext *ctx,
                                const AMRWBSubFrame *amr_subframe,
                                const int subframe)
{
    int pitch_lag_int, pitch_lag_frac;
    int i;
    float *exc = ctx->excitation;
    enum Mode mode = ctx->fr_cur_mode;

    if (mode <= MODE_8k85) {
        decode_pitch_lag_low(&pitch_lag_int, &pitch_lag_frac, amr_subframe->adap,
                              &ctx->base_pitch_lag, subframe, mode);
    } else
        decode_pitch_lag_high(&pitch_lag_int, &pitch_lag_frac, amr_subframe->adap,
                              &ctx->base_pitch_lag, subframe);

    ctx->pitch_lag_int = pitch_lag_int;
    pitch_lag_int += pitch_lag_frac > 0;



    ctx->acelpf_ctx.acelp_interpolatef(exc,
                          exc + 1 - pitch_lag_int,
                          ac_inter, 4,
                          pitch_lag_frac + (pitch_lag_frac > 0 ? 0 : 4),
                          LP_ORDER, AMRWB_SFR_SIZE + 1);



    if (amr_subframe->ltp) {
        memcpy(ctx->pitch_vector, exc, AMRWB_SFR_SIZE * sizeof(float));
    } else {
        for (i = 0; i < AMRWB_SFR_SIZE; i++)
            ctx->pitch_vector[i] = 0.18 * exc[i - 1] + 0.64 * exc[i] +
                                   0.18 * exc[i + 1];
        memcpy(exc, ctx->pitch_vector, AMRWB_SFR_SIZE * sizeof(float));
    }
}
