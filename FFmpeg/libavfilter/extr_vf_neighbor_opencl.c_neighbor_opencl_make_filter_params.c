
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ cl_mem ;
typedef int cl_int ;
struct TYPE_10__ {TYPE_3__* priv; } ;
struct TYPE_8__ {TYPE_1__* hwctx; } ;
struct TYPE_9__ {double* threshold; int coordinates; scalar_t__ coord; TYPE_2__ ocf; } ;
struct TYPE_7__ {int context; } ;
typedef TYPE_3__ NeighborOpenCLContext ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int CL_MEM_COPY_HOST_PTR ;
 int CL_MEM_HOST_NO_ACCESS ;
 int CL_MEM_READ_ONLY ;
 int EIO ;
 int av_log (TYPE_4__*,int ,char*,int) ;
 scalar_t__ clCreateBuffer (int ,int,int,int*,int*) ;

__attribute__((used)) static int neighbor_opencl_make_filter_params(AVFilterContext *avctx)
{
    NeighborOpenCLContext *ctx = avctx->priv;
    cl_int matrix[9];
    cl_mem buffer;
    cl_int cle;
    int i;

    for (i = 0; i < 4; i++) {
        ctx->threshold[i] /= 255.0;
    }

    matrix[4] = 0;
    for (i = 0; i < 8; i++) {
        if (ctx->coordinates & (1 << i)) {
            matrix[i > 3 ? i + 1: i] = 1;
        }
    }
    buffer = clCreateBuffer(ctx->ocf.hwctx->context,
                            CL_MEM_READ_ONLY |
                            CL_MEM_COPY_HOST_PTR |
                            CL_MEM_HOST_NO_ACCESS,
                            9 * sizeof(cl_int), matrix, &cle);
    if (!buffer) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create matrix buffer: "
               "%d.\n", cle);
        return AVERROR(EIO);
    }
    ctx->coord = buffer;

    return 0;
}
