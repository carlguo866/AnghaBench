
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ledc_mode_t ;
typedef size_t ledc_channel_t ;
struct TYPE_14__ {TYPE_6__* timer_group; TYPE_3__* channel_group; } ;
struct TYPE_13__ {TYPE_5__* timer; } ;
struct TYPE_11__ {int duty_resolution; } ;
struct TYPE_12__ {TYPE_4__ conf; } ;
struct TYPE_10__ {TYPE_2__* channel; } ;
struct TYPE_8__ {int timer_sel; } ;
struct TYPE_9__ {TYPE_1__ conf0; } ;


 TYPE_7__ LEDC ;

__attribute__((used)) static int ledc_get_max_duty(ledc_mode_t speed_mode, ledc_channel_t channel)
{

    int timer_sel = LEDC.channel_group[speed_mode].channel[channel].conf0.timer_sel;
    int max_duty = (1 << (LEDC.timer_group[speed_mode].timer[timer_sel].conf.duty_resolution));
    return max_duty;
}
