
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmd_pos; int * p_cmd_buf; } ;
typedef TYPE_1__ tBTA_AG_AT_CB ;


 int osi_free (int *) ;

void bta_ag_at_reinit(tBTA_AG_AT_CB *p_cb)
{
    if (p_cb->p_cmd_buf != ((void*)0)) {
        osi_free(p_cb->p_cmd_buf);
        p_cb->p_cmd_buf = ((void*)0);
    }
    p_cb->cmd_pos = 0;
}
