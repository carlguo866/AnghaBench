
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_image {TYPE_1__** bufs; int h; int w; int imgfmt; int * planes; } ;
struct TYPE_3__ {int size; int data; } ;


 int MP_IMAGE_BYTE_ALIGN ;
 int assert (int) ;
 TYPE_1__* av_buffer_alloc (int) ;
 int av_buffer_unref (TYPE_1__**) ;
 int mp_image_fill_alloc (struct mp_image*,int,int ,int ) ;
 int mp_image_get_alloc_size (int ,int ,int ,int) ;

__attribute__((used)) static bool mp_image_alloc_planes(struct mp_image *mpi)
{
    assert(!mpi->planes[0]);
    assert(!mpi->bufs[0]);

    int align = MP_IMAGE_BYTE_ALIGN;

    int size = mp_image_get_alloc_size(mpi->imgfmt, mpi->w, mpi->h, align);
    if (size < 0)
        return 0;


    mpi->bufs[0] = av_buffer_alloc(size + align);
    if (!mpi->bufs[0])
        return 0;

    if (!mp_image_fill_alloc(mpi, align, mpi->bufs[0]->data, mpi->bufs[0]->size)) {
        av_buffer_unref(&mpi->bufs[0]);
        return 0;
    }

    return 1;
}
