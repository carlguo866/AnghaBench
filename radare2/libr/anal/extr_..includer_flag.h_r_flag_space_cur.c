
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spaces; } ;
typedef int RSpace ;
typedef TYPE_1__ RFlag ;


 int * r_spaces_current (int *) ;

__attribute__((used)) static inline RSpace *r_flag_space_cur(RFlag *f) {
 return r_spaces_current (&f->spaces);
}
