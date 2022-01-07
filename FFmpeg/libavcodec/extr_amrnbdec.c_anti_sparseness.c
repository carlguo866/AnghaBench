
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* pitch_gain; double prev_sparse_fixed_gain; int ir_filter_onset; int prev_ir_filter_nr; scalar_t__ cur_frame_mode; } ;
typedef int AMRFixed ;
typedef TYPE_1__ AMRContext ;


 scalar_t__ MODE_10k2 ;
 scalar_t__ MODE_7k4 ;
 scalar_t__ MODE_7k95 ;
 int apply_ir_filter (float*,int *,int ) ;
 int * ir_filters_lookup ;
 int * ir_filters_lookup_MODE_7k95 ;

__attribute__((used)) static const float *anti_sparseness(AMRContext *p, AMRFixed *fixed_sparse,
                                    const float *fixed_vector,
                                    float fixed_gain, float *out)
{
    int ir_filter_nr;

    if (p->pitch_gain[4] < 0.6) {
        ir_filter_nr = 0;
    } else if (p->pitch_gain[4] < 0.9) {
        ir_filter_nr = 1;
    } else
        ir_filter_nr = 2;


    if (fixed_gain > 2.0 * p->prev_sparse_fixed_gain) {
        p->ir_filter_onset = 2;
    } else if (p->ir_filter_onset)
        p->ir_filter_onset--;

    if (!p->ir_filter_onset) {
        int i, count = 0;

        for (i = 0; i < 5; i++)
            if (p->pitch_gain[i] < 0.6)
                count++;
        if (count > 2)
            ir_filter_nr = 0;

        if (ir_filter_nr > p->prev_ir_filter_nr + 1)
            ir_filter_nr--;
    } else if (ir_filter_nr < 2)
        ir_filter_nr++;




    if (fixed_gain < 5.0)
        ir_filter_nr = 2;

    if (p->cur_frame_mode != MODE_7k4 && p->cur_frame_mode < MODE_10k2
         && ir_filter_nr < 2) {
        apply_ir_filter(out, fixed_sparse,
                        (p->cur_frame_mode == MODE_7k95 ?
                             ir_filters_lookup_MODE_7k95 :
                             ir_filters_lookup)[ir_filter_nr]);
        fixed_vector = out;
    }


    p->prev_ir_filter_nr = ir_filter_nr;
    p->prev_sparse_fixed_gain = fixed_gain;

    return fixed_vector;
}
