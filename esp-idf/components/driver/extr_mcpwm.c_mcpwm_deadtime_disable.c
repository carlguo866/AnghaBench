
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t mcpwm_unit_t ;
typedef size_t mcpwm_timer_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* channel; } ;
struct TYPE_4__ {int b_outbypass; int a_outbypass; scalar_t__ deb_mode; scalar_t__ b_outswap; scalar_t__ a_outswap; scalar_t__ fed_insel; scalar_t__ red_insel; scalar_t__ fed_outinvert; scalar_t__ red_outinvert; } ;
struct TYPE_5__ {TYPE_1__ db_cfg; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__** MCPWM ;
 int MCPWM_CHECK (int,int ,int ) ;
 int MCPWM_TIMER_ERROR ;
 size_t MCPWM_TIMER_MAX ;
 size_t MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 int mcpwm_spinlock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t mcpwm_deadtime_disable(mcpwm_unit_t mcpwm_num, mcpwm_timer_t timer_num)
{
    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK(timer_num < MCPWM_TIMER_MAX, MCPWM_TIMER_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&mcpwm_spinlock);
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.b_outbypass = 1;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.a_outbypass = 1;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.red_outinvert = 0;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.fed_outinvert = 0;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.red_insel = 0;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.fed_insel = 0;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.a_outswap = 0;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.b_outswap = 0;
    MCPWM[mcpwm_num]->channel[timer_num].db_cfg.deb_mode = 0;
    portEXIT_CRITICAL(&mcpwm_spinlock);
    return ESP_OK;
}
