
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int high; int low; int value; } ;
typedef TYPE_1__ ArithCoder ;



__attribute__((used)) static int arith_get_prob(ArithCoder *c, int16_t *probs)
{
    int range = c->high - c->low + 1;
    int val = ((c->value - c->low + 1) * probs[0] - 1) / range;
    int sym = 1;

    while (probs[sym] > val)
        sym++;

    c->high = range * probs[sym - 1] / probs[0] + c->low - 1;
    c->low += range * probs[sym] / probs[0];

    return sym;
}
