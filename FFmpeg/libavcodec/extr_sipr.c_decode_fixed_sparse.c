
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int* x; int* y; int n; } ;
typedef int SiprMode ;
typedef TYPE_1__ AMRFixed ;






__attribute__((used)) static void decode_fixed_sparse(AMRFixed *fixed_sparse, const int16_t *pulses,
                                SiprMode mode, int low_gain)
{
    int i;

    switch (mode) {
    case 129:
        for (i = 0; i < 3; i++) {
            fixed_sparse->x[i] = 3 * (pulses[i] & 0xf) + i;
            fixed_sparse->y[i] = pulses[i] & 0x10 ? -1 : 1;
        }
        fixed_sparse->n = 3;
        break;
    case 128:
        for (i = 0; i < 3; i++) {
            fixed_sparse->x[2*i ] = 3 * ((pulses[i] >> 4) & 0xf) + i;
            fixed_sparse->x[2*i + 1] = 3 * ( pulses[i] & 0xf) + i;

            fixed_sparse->y[2*i ] = (pulses[i] & 0x100) ? -1.0: 1.0;

            fixed_sparse->y[2*i + 1] =
                (fixed_sparse->x[2*i + 1] < fixed_sparse->x[2*i]) ?
                -fixed_sparse->y[2*i ] : fixed_sparse->y[2*i];
        }

        fixed_sparse->n = 6;
        break;
    case 130:
    default:
        if (low_gain) {
            int offset = (pulses[0] & 0x200) ? 2 : 0;
            int val = pulses[0];

            for (i = 0; i < 3; i++) {
                int index = (val & 0x7) * 6 + 4 - i*2;

                fixed_sparse->y[i] = (offset + index) & 0x3 ? -1 : 1;
                fixed_sparse->x[i] = index;

                val >>= 3;
            }
            fixed_sparse->n = 3;
        } else {
            int pulse_subset = (pulses[0] >> 8) & 1;

            fixed_sparse->x[0] = ((pulses[0] >> 4) & 15) * 3 + pulse_subset;
            fixed_sparse->x[1] = ( pulses[0] & 15) * 3 + pulse_subset + 1;

            fixed_sparse->y[0] = pulses[0] & 0x200 ? -1 : 1;
            fixed_sparse->y[1] = -fixed_sparse->y[0];
            fixed_sparse->n = 2;
        }
        break;
    }
}
