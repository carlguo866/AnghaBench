
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_csp_params {double brightness; int contrast; double hue; int saturation; double levels_out; int gamma; } ;
struct mp_csp_equalizer_opts {double* values; } ;


 size_t MP_CSP_EQ_BRIGHTNESS ;
 size_t MP_CSP_EQ_CONTRAST ;
 size_t MP_CSP_EQ_GAMMA ;
 size_t MP_CSP_EQ_HUE ;
 size_t MP_CSP_EQ_OUTPUT_LEVELS ;
 size_t MP_CSP_EQ_SATURATION ;
 double M_PI ;
 int exp (double) ;
 double log (double) ;

void mp_csp_copy_equalizer_values(struct mp_csp_params *params,
                                  const struct mp_csp_equalizer_opts *eq)
{
    params->brightness = eq->values[MP_CSP_EQ_BRIGHTNESS] / 100.0;
    params->contrast = (eq->values[MP_CSP_EQ_CONTRAST] + 100) / 100.0;
    params->hue = eq->values[MP_CSP_EQ_HUE] / 100.0 * M_PI;
    params->saturation = (eq->values[MP_CSP_EQ_SATURATION] + 100) / 100.0;
    params->gamma = exp(log(8.0) * eq->values[MP_CSP_EQ_GAMMA] / 100.0);
    params->levels_out = eq->values[MP_CSP_EQ_OUTPUT_LEVELS];
}
