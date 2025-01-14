
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef struct vlc_threadvar* vlc_threadvar_t ;
struct vlc_threadvar {int id; TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {TYPE_2__* prev; } ;


 int DosFreeThreadLocalMemory (int ) ;
 int free (struct vlc_threadvar*) ;
 int super_mutex ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 TYPE_2__* vlc_threadvar_last ;

void vlc_threadvar_delete (vlc_threadvar_t *p_tls)
{
    struct vlc_threadvar *var = *p_tls;

    vlc_mutex_lock (&super_mutex);
    if (var->prev != ((void*)0))
        var->prev->next = var->next;

    if (var->next != ((void*)0))
        var->next->prev = var->prev;
    else
        vlc_threadvar_last = var->prev;

    vlc_mutex_unlock (&super_mutex);

    DosFreeThreadLocalMemory( var->id );
    free (var);
}
