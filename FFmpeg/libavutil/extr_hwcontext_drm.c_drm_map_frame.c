
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_19__ {int nb_objects; int nb_layers; TYPE_5__* layers; TYPE_1__* objects; } ;
struct TYPE_18__ {int nb_planes; TYPE_2__* planes; } ;
struct TYPE_17__ {int hw_frames_ctx; int height; int width; int * linesize; int ** data; } ;
struct TYPE_16__ {int nb_regions; int * length; void** address; } ;
struct TYPE_15__ {size_t object_index; int offset; int pitch; } ;
struct TYPE_14__ {int size; int fd; } ;
typedef TYPE_3__ DRMMapping ;
typedef int AVHWFramesContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVDRMLayerDescriptor ;
typedef TYPE_6__ AVDRMFrameDescriptor ;


 int AVERROR (int ) ;
 int AV_DRM_MAX_PLANES ;
 int AV_HWFRAME_MAP_READ ;
 int AV_HWFRAME_MAP_WRITE ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int av_assert0 (int) ;
 int av_free (TYPE_3__*) ;
 int av_log (int *,int ,char*,int ,int ) ;
 TYPE_3__* av_mallocz (int) ;
 int drm_unmap_frame ;
 int errno ;
 int ff_hwframe_map_create (int ,TYPE_4__*,TYPE_4__ const*,int *,TYPE_3__*) ;
 void* mmap (int *,int ,int,int ,int ,int ) ;
 int munmap (void*,int ) ;

__attribute__((used)) static int drm_map_frame(AVHWFramesContext *hwfc,
                         AVFrame *dst, const AVFrame *src, int flags)
{
    const AVDRMFrameDescriptor *desc = (AVDRMFrameDescriptor*)src->data[0];
    DRMMapping *map;
    int err, i, p, plane;
    int mmap_prot;
    void *addr;

    map = av_mallocz(sizeof(*map));
    if (!map)
        return AVERROR(ENOMEM);

    mmap_prot = 0;
    if (flags & AV_HWFRAME_MAP_READ)
        mmap_prot |= PROT_READ;
    if (flags & AV_HWFRAME_MAP_WRITE)
        mmap_prot |= PROT_WRITE;

    av_assert0(desc->nb_objects <= AV_DRM_MAX_PLANES);
    for (i = 0; i < desc->nb_objects; i++) {
        addr = mmap(((void*)0), desc->objects[i].size, mmap_prot, MAP_SHARED,
                    desc->objects[i].fd, 0);
        if (addr == MAP_FAILED) {
            err = AVERROR(errno);
            av_log(hwfc, AV_LOG_ERROR, "Failed to map DRM object %d to "
                   "memory: %d.\n", desc->objects[i].fd, errno);
            goto fail;
        }

        map->address[i] = addr;
        map->length[i] = desc->objects[i].size;
    }
    map->nb_regions = i;

    plane = 0;
    for (i = 0; i < desc->nb_layers; i++) {
        const AVDRMLayerDescriptor *layer = &desc->layers[i];
        for (p = 0; p < layer->nb_planes; p++) {
            dst->data[plane] =
                (uint8_t*)map->address[layer->planes[p].object_index] +
                                       layer->planes[p].offset;
            dst->linesize[plane] = layer->planes[p].pitch;
            ++plane;
        }
    }
    av_assert0(plane <= AV_DRM_MAX_PLANES);

    dst->width = src->width;
    dst->height = src->height;

    err = ff_hwframe_map_create(src->hw_frames_ctx, dst, src,
                                &drm_unmap_frame, map);
    if (err < 0)
        goto fail;

    return 0;

fail:
    for (i = 0; i < desc->nb_objects; i++) {
        if (map->address[i])
            munmap(map->address[i], map->length[i]);
    }
    av_free(map);
    return err;
}
