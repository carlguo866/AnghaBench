
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int views_count; } ;
struct TYPE_4__ {TYPE_1__ view_array; } ;


 TYPE_2__* video_layout_state ;

int video_layout_view_count(void)
{
   return video_layout_state->view_array.views_count;
}
