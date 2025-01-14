
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_6__ {int lock; } ;
struct TYPE_8__ {unsigned int i_title; int i_attachments; int psz_bd_path; int read_block_lock; TYPE_1__ bdj; int pl_info_lock; int events_delayed; int * attachments; int * pp_title; scalar_t__ p_tf_out; int * p_out; scalar_t__ p_parser; scalar_t__ bluray; } ;
typedef TYPE_3__ demux_sys_t ;


 int ARRAY_RESET (int ) ;
 int MAX_OVERLAY ;
 int TAB_CLEAN (int,int *) ;
 int bd_close (scalar_t__) ;
 int blurayCloseOverlay (TYPE_2__*,int) ;
 int es_out_Delete (int *) ;
 int free (int ) ;
 int setTitleInfo (TYPE_3__*,int *) ;
 int timestamps_filter_es_out_Delete (scalar_t__) ;
 int vlc_demux_chained_Delete (scalar_t__) ;
 int vlc_input_attachment_Delete (int ) ;
 int vlc_input_title_Delete (int ) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void blurayClose(vlc_object_t *object)
{
    demux_t *p_demux = (demux_t*)object;
    demux_sys_t *p_sys = p_demux->p_sys;

    setTitleInfo(p_sys, ((void*)0));






    if (p_sys->bluray) {
        bd_close(p_sys->bluray);
    }

    vlc_mutex_lock(&p_sys->bdj.lock);
    for(int i = 0; i < MAX_OVERLAY; i++)
        blurayCloseOverlay(p_demux, i);
    vlc_mutex_unlock(&p_sys->bdj.lock);

    if (p_sys->p_parser)
        vlc_demux_chained_Delete(p_sys->p_parser);

    if (p_sys->p_out != ((void*)0))
        es_out_Delete(p_sys->p_out);
    if(p_sys->p_tf_out)
        timestamps_filter_es_out_Delete(p_sys->p_tf_out);


    for (unsigned int i = 0; i < p_sys->i_title; i++)
        vlc_input_title_Delete(p_sys->pp_title[i]);
    TAB_CLEAN(p_sys->i_title, p_sys->pp_title);

    for (int i = 0; i < p_sys->i_attachments; i++)
      vlc_input_attachment_Delete(p_sys->attachments[i]);
    TAB_CLEAN(p_sys->i_attachments, p_sys->attachments);

    ARRAY_RESET(p_sys->events_delayed);

    vlc_mutex_destroy(&p_sys->pl_info_lock);
    vlc_mutex_destroy(&p_sys->bdj.lock);
    vlc_mutex_destroy(&p_sys->read_block_lock);

    free(p_sys->psz_bd_path);
}
