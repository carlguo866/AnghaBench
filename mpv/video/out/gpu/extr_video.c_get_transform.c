
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {float member_1; int member_0; } ;
struct TYPE_7__ {int member_0; int member_1; } ;
struct TYPE_6__ {int member_0; int member_1; } ;
struct TYPE_5__ {TYPE_3__ member_1; TYPE_2__ member_0; } ;
struct gl_transform {float* t; TYPE_4__ member_1; TYPE_1__ member_0; } ;


 int gl_transform_trans (struct gl_transform,struct gl_transform*) ;
 int gl_transform_vec (struct gl_transform,float*,float*) ;

__attribute__((used)) static void get_transform(float w, float h, int rotate, bool flip,
                          struct gl_transform *out_tr)
{
    int a = rotate % 90 ? 0 : rotate / 90;
    int sin90[4] = {0, 1, 0, -1};
    int cos90[4] = {1, 0, -1, 0};
    struct gl_transform tr = {{{ cos90[a], sin90[a]},
                               {-sin90[a], cos90[a]}}};


    float b[2] = {1, 1};
    gl_transform_vec(tr, &b[0], &b[1]);
    tr.t[0] += b[0] < 0 ? w : 0;
    tr.t[1] += b[1] < 0 ? h : 0;

    if (flip) {
        struct gl_transform fliptr = {{{1, 0}, {0, -1}}, {0, h}};
        gl_transform_trans(fliptr, &tr);
    }

    *out_tr = tr;
}
