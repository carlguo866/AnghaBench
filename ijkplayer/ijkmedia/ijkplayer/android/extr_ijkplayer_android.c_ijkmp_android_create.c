
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vout; int pipeline; } ;
struct TYPE_6__ {TYPE_5__* ffplayer; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int SDL_VoutAndroid_CreateForAndroidSurface () ;
 int ffpipeline_create_from_android (TYPE_5__*) ;
 int ffpipeline_set_vout (int ,int ) ;
 TYPE_1__* ijkmp_create (int (*) (void*)) ;
 int ijkmp_dec_ref_p (TYPE_1__**) ;

IjkMediaPlayer *ijkmp_android_create(int(*msg_loop)(void*))
{
    IjkMediaPlayer *mp = ijkmp_create(msg_loop);
    if (!mp)
        goto fail;

    mp->ffplayer->vout = SDL_VoutAndroid_CreateForAndroidSurface();
    if (!mp->ffplayer->vout)
        goto fail;

    mp->ffplayer->pipeline = ffpipeline_create_from_android(mp->ffplayer);
    if (!mp->ffplayer->pipeline)
        goto fail;

    ffpipeline_set_vout(mp->ffplayer->pipeline, mp->ffplayer->vout);

    return mp;

fail:
    ijkmp_dec_ref_p(&mp);
    return ((void*)0);
}
