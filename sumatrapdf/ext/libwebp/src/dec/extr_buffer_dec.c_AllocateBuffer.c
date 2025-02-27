
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned long long uint64_t ;
struct TYPE_8__ {int y_stride; size_t y_size; int u_stride; size_t u_size; int v_stride; size_t v_size; size_t a_size; int a_stride; int * a; int * v; int * u; int * y; } ;
typedef TYPE_2__ WebPYUVABuffer ;
struct TYPE_9__ {int stride; size_t size; int * rgba; } ;
typedef TYPE_3__ WebPRGBABuffer ;
struct TYPE_7__ {TYPE_3__ RGBA; TYPE_2__ YUVA; } ;
struct TYPE_10__ {int width; int height; size_t colorspace; scalar_t__ is_external_memory; TYPE_1__ u; int * private_memory; } ;
typedef TYPE_4__ WebPDecBuffer ;
typedef size_t WEBP_CSP_MODE ;
typedef int VP8StatusCode ;


 int CheckDecBuffer (TYPE_4__* const) ;
 int IsValidColorspace (size_t const) ;
 size_t const MODE_YUVA ;
 int VP8_STATUS_INVALID_PARAM ;
 int VP8_STATUS_OUT_OF_MEMORY ;
 int WebPIsRGBMode (size_t const) ;
 scalar_t__ WebPSafeMalloc (unsigned long long,int) ;
 unsigned long long* kModeBpp ;

__attribute__((used)) static VP8StatusCode AllocateBuffer(WebPDecBuffer* const buffer) {
  const int w = buffer->width;
  const int h = buffer->height;
  const WEBP_CSP_MODE mode = buffer->colorspace;

  if (w <= 0 || h <= 0 || !IsValidColorspace(mode)) {
    return VP8_STATUS_INVALID_PARAM;
  }

  if (buffer->is_external_memory <= 0 && buffer->private_memory == ((void*)0)) {
    uint8_t* output;
    int uv_stride = 0, a_stride = 0;
    uint64_t uv_size = 0, a_size = 0, total_size;


    int stride;
    uint64_t size;

    if ((uint64_t)w * kModeBpp[mode] >= (1ull << 32)) {
      return VP8_STATUS_INVALID_PARAM;
    }
    stride = w * kModeBpp[mode];
    size = (uint64_t)stride * h;
    if (!WebPIsRGBMode(mode)) {
      uv_stride = (w + 1) / 2;
      uv_size = (uint64_t)uv_stride * ((h + 1) / 2);
      if (mode == MODE_YUVA) {
        a_stride = w;
        a_size = (uint64_t)a_stride * h;
      }
    }
    total_size = size + 2 * uv_size + a_size;


    output = (uint8_t*)WebPSafeMalloc(total_size, sizeof(*output));
    if (output == ((void*)0)) {
      return VP8_STATUS_OUT_OF_MEMORY;
    }
    buffer->private_memory = output;

    if (!WebPIsRGBMode(mode)) {
      WebPYUVABuffer* const buf = &buffer->u.YUVA;
      buf->y = output;
      buf->y_stride = stride;
      buf->y_size = (size_t)size;
      buf->u = output + size;
      buf->u_stride = uv_stride;
      buf->u_size = (size_t)uv_size;
      buf->v = output + size + uv_size;
      buf->v_stride = uv_stride;
      buf->v_size = (size_t)uv_size;
      if (mode == MODE_YUVA) {
        buf->a = output + size + 2 * uv_size;
      }
      buf->a_size = (size_t)a_size;
      buf->a_stride = a_stride;
    } else {
      WebPRGBABuffer* const buf = &buffer->u.RGBA;
      buf->rgba = output;
      buf->stride = stride;
      buf->size = (size_t)size;
    }
  }
  return CheckDecBuffer(buffer);
}
