
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* p; } ;
typedef TYPE_4__ vout_thread_t ;
struct TYPE_15__ {int format; } ;
typedef TYPE_5__ picture_t ;
struct TYPE_13__ {int video; } ;
struct TYPE_11__ {TYPE_4__* sys; } ;
struct TYPE_16__ {TYPE_3__ fmt_out; TYPE_1__ owner; } ;
typedef TYPE_6__ filter_t ;
struct TYPE_12__ {int private_pool; } ;


 int picture_Reset (TYPE_5__*) ;
 TYPE_5__* picture_pool_Get (int ) ;
 int video_format_CopyCropAr (int *,int *) ;

__attribute__((used)) static picture_t *VoutVideoFilterInteractiveNewPicture(filter_t *filter)
{
    vout_thread_t *vout = filter->owner.sys;

    picture_t *picture = picture_pool_Get(vout->p->private_pool);
    if (picture) {
        picture_Reset(picture);
        video_format_CopyCropAr(&picture->format, &filter->fmt_out.video);
    }
    return picture;
}
