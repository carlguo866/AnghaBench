
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ live; } ;


 TYPE_2__ hb_status ;

void
ghb_clear_live_state(gint state)
{
    hb_status.live.state &= ~state;
}
