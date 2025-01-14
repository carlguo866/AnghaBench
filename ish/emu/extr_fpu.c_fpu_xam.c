
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct cpu_state {int c0; int c2; int c3; int c1; } ;
struct TYPE_8__ {int sign; } ;
typedef TYPE_1__ float80 ;


 TYPE_1__ ST (int ) ;
 int f80_is_supported (TYPE_1__) ;
 scalar_t__ f80_isdenormal (TYPE_1__) ;
 scalar_t__ f80_isinf (TYPE_1__) ;
 scalar_t__ f80_isnan (TYPE_1__) ;
 scalar_t__ f80_iszero (TYPE_1__) ;

void fpu_xam(struct cpu_state *cpu) {
    float80 f = ST(0);
    int outflags = 0;
    if (!f80_is_supported(f)) {
        outflags = 0b000;
    } else if (f80_isnan(f)) {
        outflags = 0b001;
    } else if (f80_isinf(f)) {
        outflags = 0b011;
    } else if (f80_iszero(f)) {
        outflags = 0b100;
    } else if (f80_isdenormal(f)) {
        outflags = 0b110;
    } else {


        outflags = 0b010;
    }
    cpu->c1 = f.sign;
    cpu->c0 = outflags & 1;
    cpu->c2 = (outflags >> 1) & 1;
    cpu->c3 = (outflags >> 2) & 1;
}
