
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int WEBP_CSP_MODE ;
struct TYPE_8__ {TYPE_3__* rescaler; TYPE_1__* output_; } ;
typedef TYPE_2__ VP8LDecoder ;
struct TYPE_9__ {int src_width; } ;
struct TYPE_7__ {int colorspace; } ;


 scalar_t__ Export (TYPE_3__*,int const,int,int * const) ;
 int WebPMultARGBRows (int * const,int,int ,int const,int ) ;
 int WebPRescaleNeededLines (TYPE_3__*,int const) ;
 int WebPRescalerImport (TYPE_3__*,int const,int * const,int) ;
 int assert (int) ;

__attribute__((used)) static int EmitRescaledRowsRGBA(const VP8LDecoder* const dec,
                                uint8_t* in, int in_stride, int mb_h,
                                uint8_t* const out, int out_stride) {
  const WEBP_CSP_MODE colorspace = dec->output_->colorspace;
  int num_lines_in = 0;
  int num_lines_out = 0;
  while (num_lines_in < mb_h) {
    uint8_t* const row_in = in + num_lines_in * in_stride;
    uint8_t* const row_out = out + num_lines_out * out_stride;
    const int lines_left = mb_h - num_lines_in;
    const int needed_lines = WebPRescaleNeededLines(dec->rescaler, lines_left);
    int lines_imported;
    assert(needed_lines > 0 && needed_lines <= lines_left);
    WebPMultARGBRows(row_in, in_stride,
                     dec->rescaler->src_width, needed_lines, 0);
    lines_imported =
        WebPRescalerImport(dec->rescaler, lines_left, row_in, in_stride);
    assert(lines_imported == needed_lines);
    num_lines_in += lines_imported;
    num_lines_out += Export(dec->rescaler, colorspace, out_stride, row_out);
  }
  return num_lines_out;
}
