
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fifo; } ;
typedef TYPE_1__ AVFilterLink ;


 scalar_t__ ff_framequeue_queued_frames (int *) ;

int ff_inlink_check_available_frame(AVFilterLink *link)
{
    return ff_framequeue_queued_frames(&link->fifo) > 0;
}
