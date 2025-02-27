
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* sps; } ;
struct TYPE_11__ {scalar_t__ threads_type; TYPE_3__ ps; TYPE_1__* ref; } ;
struct TYPE_10__ {int poc; int tf; int * tab_mvf; } ;
struct TYPE_8__ {int min_pu_width; int log2_ctb_size; int height; int width; int log2_min_pu_size; } ;
struct TYPE_7__ {TYPE_4__* collocated_ref; } ;
typedef int MvField ;
typedef int Mv ;
typedef TYPE_4__ HEVCFrame ;
typedef TYPE_5__ HEVCContext ;


 int DERIVE_TEMPORAL_COLOCATED_MVS ;
 scalar_t__ FF_THREAD_FRAME ;
 int TAB_MVF (int,int) ;
 int ff_thread_await_progress (int *,int,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int temporal_luma_motion_vector(HEVCContext *s, int x0, int y0,
                                       int nPbW, int nPbH, int refIdxLx,
                                       Mv *mvLXCol, int X)
{
    MvField *tab_mvf;
    MvField temp_col;
    int x, y, x_pu, y_pu;
    int min_pu_width = s->ps.sps->min_pu_width;
    int availableFlagLXCol = 0;
    int colPic;

    HEVCFrame *ref = s->ref->collocated_ref;

    if (!ref) {
        memset(mvLXCol, 0, sizeof(*mvLXCol));
        return 0;
    }

    tab_mvf = ref->tab_mvf;
    colPic = ref->poc;


    x = x0 + nPbW;
    y = y0 + nPbH;

    if (tab_mvf &&
        (y0 >> s->ps.sps->log2_ctb_size) == (y >> s->ps.sps->log2_ctb_size) &&
        y < s->ps.sps->height &&
        x < s->ps.sps->width) {
        x &= ~15;
        y &= ~15;
        if (s->threads_type == FF_THREAD_FRAME)
            ff_thread_await_progress(&ref->tf, y, 0);
        x_pu = x >> s->ps.sps->log2_min_pu_size;
        y_pu = y >> s->ps.sps->log2_min_pu_size;
        temp_col = TAB_MVF(x_pu, y_pu);
        availableFlagLXCol = DERIVE_TEMPORAL_COLOCATED_MVS;
    }


    if (tab_mvf && !availableFlagLXCol) {
        x = x0 + (nPbW >> 1);
        y = y0 + (nPbH >> 1);
        x &= ~15;
        y &= ~15;
        if (s->threads_type == FF_THREAD_FRAME)
            ff_thread_await_progress(&ref->tf, y, 0);
        x_pu = x >> s->ps.sps->log2_min_pu_size;
        y_pu = y >> s->ps.sps->log2_min_pu_size;
        temp_col = TAB_MVF(x_pu, y_pu);
        availableFlagLXCol = DERIVE_TEMPORAL_COLOCATED_MVS;
    }
    return availableFlagLXCol;
}
