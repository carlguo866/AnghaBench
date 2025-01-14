
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int num; int den; } ;
struct TYPE_9__ {TYPE_2__ par; } ;
struct TYPE_7__ {int num; int den; } ;
struct TYPE_10__ {int index; int playlist; int video_id; int angle_count; TYPE_3__ geometry; TYPE_1__ video_timebase; int video_codec_param; int video_codec; int path; int metadata; void* list_attachment; void* list_subtitle; void* list_chapter; void* list_audio; } ;
typedef TYPE_4__ hb_title_t ;


 int AV_CODEC_ID_MPEG2VIDEO ;
 int WORK_DECAVCODECV ;
 TYPE_4__* calloc (int,int) ;
 void* hb_list_init () ;
 int hb_metadata_init () ;
 int strdup (char*) ;

hb_title_t * hb_title_init( char * path, int index )
{
    hb_title_t * t;

    t = calloc( sizeof( hb_title_t ), 1 );

    t->index = index;
    t->playlist = -1;
    t->list_audio = hb_list_init();
    t->list_chapter = hb_list_init();
    t->list_subtitle = hb_list_init();
    t->list_attachment = hb_list_init();
    t->metadata = hb_metadata_init();
    t->path = strdup(path);

    t->video_id = 0xE0;
    t->video_codec = WORK_DECAVCODECV;
    t->video_codec_param = AV_CODEC_ID_MPEG2VIDEO;
    t->video_timebase.num = 1;
    t->video_timebase.den = 90000;
    t->angle_count = 1;
    t->geometry.par.num = 1;
    t->geometry.par.den = 1;

    return t;
}
