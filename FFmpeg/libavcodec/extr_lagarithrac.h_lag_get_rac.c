
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {unsigned int range; unsigned int scale; unsigned int low; unsigned int* prob; unsigned int hash_shift; int* range_hash; } ;
typedef TYPE_1__ lag_rac ;


 int lag_rac_refill (TYPE_1__*) ;

__attribute__((used)) static inline uint8_t lag_get_rac(lag_rac *l)
{
    unsigned range_scaled, low_scaled;
    int val;

    lag_rac_refill(l);

    range_scaled = l->range >> l->scale;

    if (l->low < range_scaled * l->prob[255]) {

        if (l->low < range_scaled * l->prob[1]) {
            val = 0;
        } else {
            low_scaled = l->low / (range_scaled<<(l->hash_shift));

            val = l->range_hash[low_scaled];
            while (l->low >= range_scaled * l->prob[val + 1])
                val++;
        }

        l->range = range_scaled * (l->prob[val + 1] - l->prob[val]);
    } else {
        val = 255;
        l->range -= range_scaled * l->prob[255];
    }

    if (!l->range)
        l->range = 0x80;

    l->low -= range_scaled * l->prob[val];

    return val;
}
