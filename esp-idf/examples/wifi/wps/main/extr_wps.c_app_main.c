
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int start_wps () ;

void app_main(void)
{

    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK( ret );

    start_wps();
}
