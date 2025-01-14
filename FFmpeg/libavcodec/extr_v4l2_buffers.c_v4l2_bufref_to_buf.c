
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {unsigned int bytesused; unsigned int length; int type; } ;
struct TYPE_9__ {int num_planes; TYPE_3__ buf; TYPE_2__* planes; TYPE_1__* plane_info; } ;
typedef TYPE_4__ V4L2Buffer ;
struct TYPE_7__ {unsigned int bytesused; unsigned int length; } ;
struct TYPE_6__ {unsigned int length; scalar_t__ mm_addr; } ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int EINVAL ;
 unsigned int FFMIN (int,unsigned int) ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int v4l2_bufref_to_buf(V4L2Buffer *out, int plane, const uint8_t* data, int size, int offset, AVBufferRef* bref)
{
    unsigned int bytesused, length;

    if (plane >= out->num_planes)
        return AVERROR(EINVAL);

    length = out->plane_info[plane].length;
    bytesused = FFMIN(size+offset, length);

    memcpy((uint8_t*)out->plane_info[plane].mm_addr+offset, data, FFMIN(size, length-offset));

    if (V4L2_TYPE_IS_MULTIPLANAR(out->buf.type)) {
        out->planes[plane].bytesused = bytesused;
        out->planes[plane].length = length;
    } else {
        out->buf.bytesused = bytesused;
        out->buf.length = length;
    }

    return 0;
}
