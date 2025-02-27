
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct gpio {int dummy; } ;
struct dc_link {scalar_t__ connector_signal; TYPE_3__* ctx; int link_id; TYPE_2__* dc; } ;
typedef enum dc_connection_type { ____Placeholder_dc_connection_type } dc_connection_type ;
struct TYPE_6__ {int gpio_service; int dc_bios; } ;
struct TYPE_4__ {int (* edp_wait_for_hpd_ready ) (struct dc_link*,int) ;int (* edp_power_control ) (struct dc_link*,int) ;} ;
struct TYPE_5__ {TYPE_1__ hwss; } ;


 int GPIO_MODE_INTERRUPT ;
 scalar_t__ SIGNAL_TYPE_EDP ;
 scalar_t__ SIGNAL_TYPE_LVDS ;
 int dal_gpio_close (struct gpio*) ;
 int dal_gpio_destroy_irq (struct gpio**) ;
 int dal_gpio_get_value (struct gpio*,scalar_t__*) ;
 int dal_gpio_open (struct gpio*,int ) ;
 int dc_connection_none ;
 int dc_connection_single ;
 struct gpio* get_hpd_gpio (int ,int ,int ) ;
 int stub1 (struct dc_link*,int) ;
 int stub2 (struct dc_link*,int) ;

bool dc_link_detect_sink(struct dc_link *link, enum dc_connection_type *type)
{
 uint32_t is_hpd_high = 0;
 struct gpio *hpd_pin;

 if (link->connector_signal == SIGNAL_TYPE_LVDS) {
  *type = dc_connection_single;
  return 1;
 }

 if (link->connector_signal == SIGNAL_TYPE_EDP) {

  link->dc->hwss.edp_power_control(link, 1);
  link->dc->hwss.edp_wait_for_hpd_ready(link, 1);
 }


 hpd_pin = get_hpd_gpio(link->ctx->dc_bios, link->link_id, link->ctx->gpio_service);
 if (hpd_pin == ((void*)0))
  goto hpd_gpio_failure;

 dal_gpio_open(hpd_pin, GPIO_MODE_INTERRUPT);
 dal_gpio_get_value(hpd_pin, &is_hpd_high);
 dal_gpio_close(hpd_pin);
 dal_gpio_destroy_irq(&hpd_pin);

 if (is_hpd_high) {
  *type = dc_connection_single;

 } else {
  *type = dc_connection_none;
 }

 return 1;

hpd_gpio_failure:
 return 0;
}
