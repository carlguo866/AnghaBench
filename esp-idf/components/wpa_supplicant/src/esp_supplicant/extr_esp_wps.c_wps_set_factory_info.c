
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* manufacturer; scalar_t__* model_number; scalar_t__* model_name; scalar_t__* device_name; } ;
struct TYPE_6__ {TYPE_1__ factory_info; } ;
typedef TYPE_2__ esp_wps_config_t ;
struct TYPE_7__ {int device_name; int model_name; int model_number; int manufacturer; } ;


 int ESP_OK ;
 int MSG_INFO ;
 scalar_t__ WPS_MAX_DEVICE_NAME_LEN ;
 scalar_t__ WPS_MAX_MANUFACTURER_LEN ;
 scalar_t__ WPS_MAX_MODEL_NAME_LEN ;
 scalar_t__ WPS_MAX_MODEL_NUMBER_LEN ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 TYPE_4__* s_factory_info ;
 int wpa_printf (int ,char*,int ,int ,int ,int ) ;
 int wps_set_default_factory () ;

int wps_set_factory_info(const esp_wps_config_t *config)
{
    int ret;

    ret = wps_set_default_factory();
    if (ret != 0) {
        return ret;
    }

    if (config->factory_info.manufacturer[0] != 0) {
        memcpy(s_factory_info->manufacturer, config->factory_info.manufacturer, WPS_MAX_MANUFACTURER_LEN - 1);
    }

    if (config->factory_info.model_number[0] != 0) {
        memcpy(s_factory_info->model_number, config->factory_info.model_number, WPS_MAX_MODEL_NUMBER_LEN - 1);
    }

    if (config->factory_info.model_name[0] != 0) {
        memcpy(s_factory_info->model_name, config->factory_info.model_name, WPS_MAX_MODEL_NAME_LEN - 1);
    }

    if (config->factory_info.device_name[0] != 0) {
        memcpy(s_factory_info->device_name, config->factory_info.device_name, WPS_MAX_DEVICE_NAME_LEN - 1);
    }

    wpa_printf(MSG_INFO, "manufacturer: %s, model number: %s, model name: %s, device name: %s", s_factory_info->manufacturer,
               s_factory_info->model_number, s_factory_info->model_name, s_factory_info->device_name);

    return ESP_OK;
}
