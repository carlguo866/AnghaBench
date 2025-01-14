
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_model_matches; int * model_matches; } ;
struct TYPE_6__ {scalar_t__* ransac_err; int alfg; } ;
typedef int MotionVector ;
typedef TYPE_1__ DeshakeOpenCLContext ;
typedef TYPE_2__ DebugMatches ;


 float FLT_MAX ;
 int compute_error (int *,int const,double*,scalar_t__*) ;
 int get_subset (int *,int *,int const,int *,int) ;
 int optimize_model (TYPE_1__*,int *,int *,int const,float,double*) ;
 int run_estimate_kernel (int *,double*) ;

__attribute__((used)) static bool minimize_error(
    DeshakeOpenCLContext *deshake_ctx,
    MotionVector *inliers,
    DebugMatches *debug_matches,
    const int num_inliers,
    double *model_out,
    const int max_iters
) {
    bool result = 0;
    float best_err = FLT_MAX;
    double best_model[6], model[6];
    MotionVector pairs_subset[3], best_pairs[3];

    for (int i = 0; i < max_iters; i++) {
        float total_err = 0;
        bool found = get_subset(&deshake_ctx->alfg, inliers, num_inliers, pairs_subset, 10000);

        if (!found) {
            if (i == 0) {
                return 0;
            }

            break;
        }

        run_estimate_kernel(pairs_subset, model);
        compute_error(inliers, num_inliers, model, deshake_ctx->ransac_err);

        for (int j = 0; j < num_inliers; j++) {
            total_err += deshake_ctx->ransac_err[j];
        }

        if (total_err < best_err) {
            for (int mi = 0; mi < 6; ++mi) {
                best_model[mi] = model[mi];
            }

            for (int pi = 0; pi < 3; pi++) {
                best_pairs[pi] = pairs_subset[pi];
            }

            best_err = total_err;
        }
    }

    for (int mi = 0; mi < 6; ++mi) {
        model_out[mi] = best_model[mi];
    }

    for (int pi = 0; pi < 3; ++pi) {
        debug_matches->model_matches[pi] = best_pairs[pi];
    }
    debug_matches->num_model_matches = 3;
    result = 1;

    optimize_model(deshake_ctx, best_pairs, inliers, num_inliers, best_err, model_out);
    return result;
}
