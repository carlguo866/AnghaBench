
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * funcs; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct hw_hpd {TYPE_2__ base; } ;
struct dc_context {int dummy; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int dal_hw_hpd_construct (struct hw_hpd*,int,int ,struct dc_context*) ;
 int funcs ;

__attribute__((used)) static void construct(
 struct hw_hpd *hpd,
 enum gpio_id id,
 uint32_t en,
 struct dc_context *ctx)
{
 dal_hw_hpd_construct(hpd, id, en, ctx);
 hpd->base.base.funcs = &funcs;
}
