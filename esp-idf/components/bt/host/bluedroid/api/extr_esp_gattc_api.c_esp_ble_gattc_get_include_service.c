
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int esp_gattc_incl_svc_elem_t ;
typedef int esp_gatt_status_t ;
typedef int esp_gatt_if_t ;
typedef int esp_bt_uuid_t ;


 scalar_t__ BTC_GATT_CREATE_CONN_ID (int ,scalar_t__) ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_GATT_INVALID_HANDLE ;
 int ESP_GATT_INVALID_PDU ;
 int btc_ble_gattc_get_include_service (scalar_t__,scalar_t__,scalar_t__,int *,int *,scalar_t__*) ;

esp_gatt_status_t esp_ble_gattc_get_include_service(esp_gatt_if_t gattc_if,
                                                    uint16_t conn_id,
                                                    uint16_t start_handle,
                                                    uint16_t end_handle,
                                                    esp_bt_uuid_t *incl_uuid,
                                                    esp_gattc_incl_svc_elem_t *result,
                                                    uint16_t *count)
{
    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    if (start_handle == 0 && end_handle == 0) {
        *count = 0;
        return ESP_GATT_INVALID_HANDLE;
    }

    if (result == ((void*)0) || count == ((void*)0) || *count == 0) {
        return ESP_GATT_INVALID_PDU;
    }

    uint16_t conn_hdl = BTC_GATT_CREATE_CONN_ID(gattc_if, conn_id);
    return btc_ble_gattc_get_include_service(conn_hdl, start_handle, end_handle, incl_uuid, result, count);
}
