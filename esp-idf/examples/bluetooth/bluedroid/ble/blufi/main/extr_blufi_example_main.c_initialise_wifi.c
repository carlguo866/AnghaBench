
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_init_config_t ;
typedef int esp_netif_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_EVENT_ANY_ID ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int WIFI_EVENT ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_MODE_STA ;
 int WIFI_STORAGE_RAM ;
 int assert (int *) ;
 int esp_event_handler_register (int ,int ,int *,int *) ;
 int esp_event_loop_create_default () ;
 int * esp_netif_create_default_wifi_sta () ;
 int esp_netif_init () ;
 int esp_wifi_init (int *) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_set_storage (int ) ;
 int esp_wifi_start () ;
 int ip_event_handler ;
 int wifi_event_group ;
 int wifi_event_handler ;
 int xEventGroupCreate () ;

__attribute__((used)) static void initialise_wifi(void)
{
    esp_netif_init();
    wifi_event_group = xEventGroupCreate();
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_t *sta_netif = esp_netif_create_default_wifi_sta();
    assert(sta_netif);
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &ip_event_handler, ((void*)0)));

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_wifi_init(&cfg) );
    ESP_ERROR_CHECK( esp_wifi_set_storage(WIFI_STORAGE_RAM) );
    ESP_ERROR_CHECK( esp_wifi_set_mode(WIFI_MODE_STA) );
    ESP_ERROR_CHECK( esp_wifi_start() );
}
