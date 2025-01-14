
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int i_height; int i_width; } ;
struct TYPE_25__ {TYPE_1__ format; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_26__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_27__ {int derive_failed; int image_fallback_failed; int cache; } ;
typedef TYPE_4__ filter_sys_t ;
typedef int VASurfaceID ;
typedef scalar_t__ VAImageID ;
struct TYPE_28__ {scalar_t__ image_id; int buf; } ;
typedef TYPE_5__ VAImage ;
typedef int VADisplay ;


 scalar_t__ CreateFallbackImage (TYPE_3__*,TYPE_2__*,int ,TYPE_5__*) ;
 int FillPictureFromVAImage (TYPE_2__*,TYPE_5__*,void*,int *) ;
 scalar_t__ VA_INVALID_ID ;
 int VLC_OBJECT (TYPE_3__*) ;
 TYPE_2__* filter_NewPicture (TYPE_3__*) ;
 int msg_Err (TYPE_3__*,char*) ;
 int picture_CopyProperties (TYPE_2__*,TYPE_2__*) ;
 int picture_Release (TYPE_2__*) ;
 scalar_t__ vaGetImage (int ,int ,int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ vaSyncSurface (int ,int ) ;
 scalar_t__ vlc_vaapi_DeriveImage (int ,int ,int ,TYPE_5__*) ;
 int vlc_vaapi_DestroyImage (int ,int ,scalar_t__) ;
 scalar_t__ vlc_vaapi_MapBuffer (int ,int ,int ,void**) ;
 int vlc_vaapi_PicGetDisplay (TYPE_2__*) ;
 int vlc_vaapi_PicGetSurface (TYPE_2__*) ;
 int vlc_vaapi_UnmapBuffer (int ,int ,int ) ;

__attribute__((used)) static picture_t *
DownloadSurface(filter_t *filter, picture_t *src_pic)
{
    filter_sys_t *const filter_sys = filter->p_sys;
    VADisplay va_dpy = vlc_vaapi_PicGetDisplay(src_pic);
    VAImage src_img;
    void * src_buf;

    picture_t *dest = filter_NewPicture(filter);
    if (!dest)
    {
        msg_Err(filter, "filter_NewPicture failed");
        goto ret;
    }

    VAImageID image_fallback_id = VA_INVALID_ID;
    VASurfaceID surface = vlc_vaapi_PicGetSurface(src_pic);
    if (vaSyncSurface(va_dpy, surface))
        goto error;

    if (filter_sys->derive_failed ||
        vlc_vaapi_DeriveImage(VLC_OBJECT(filter), va_dpy, surface, &src_img))
    {
        if (filter_sys->image_fallback_failed)
            goto error;

        filter_sys->derive_failed = 1;

        VAImage image_fallback;
        if (CreateFallbackImage(filter, src_pic, va_dpy, &image_fallback))
        {
            filter_sys->image_fallback_failed = 1;
            goto error;
        }
        image_fallback_id = image_fallback.image_id;

        if (vaGetImage(va_dpy, surface, 0, 0, src_pic->format.i_width,
                       src_pic->format.i_height, image_fallback_id))
        {
            filter_sys->image_fallback_failed = 1;
            goto error;
        }
        src_img = image_fallback;
    }

    if (vlc_vaapi_MapBuffer(VLC_OBJECT(filter), va_dpy, src_img.buf, &src_buf))
        goto error;

    FillPictureFromVAImage(dest, &src_img, src_buf, &filter_sys->cache);

    vlc_vaapi_UnmapBuffer(VLC_OBJECT(filter), va_dpy, src_img.buf);
    vlc_vaapi_DestroyImage(VLC_OBJECT(filter), va_dpy, src_img.image_id);

    picture_CopyProperties(dest, src_pic);
ret:
    picture_Release(src_pic);
    return dest;

error:
    if (image_fallback_id != VA_INVALID_ID)
        vlc_vaapi_DestroyImage(VLC_OBJECT(filter), va_dpy, image_fallback_id);

    picture_Release(dest);
    dest = ((void*)0);
    goto ret;
}
