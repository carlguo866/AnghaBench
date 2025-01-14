
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct net_buf_simple {int data; int len; } ;
struct TYPE_7__ {int role; int timeout; int dst; int app_idx; int net_idx; } ;
typedef TYPE_1__ example_msg_common_info_t ;
struct TYPE_8__ {int ctx_flags; int unicast_min; int unicast_max; int net_idx; int group_addr; int node_addr_cnt; int prov_addr; int action; int match_len; int match_val; int iv_index; int flags; } ;
typedef TYPE_2__ example_fast_prov_info_set_t ;
typedef int esp_err_t ;
struct TYPE_9__ {int send_rel; int send_ttl; int addr; int app_idx; int net_idx; } ;
typedef TYPE_3__ esp_ble_mesh_msg_ctx_t ;
typedef int esp_ble_mesh_model_t ;


 int BIT (int) ;
 int ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_INFO_SET ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_LOGI (int ,char*,int,...) ;
 int ESP_LOG_BUFFER_HEX (char*,int ,int ) ;
 int TAG ;
 struct net_buf_simple* bt_mesh_alloc_buf (int ) ;
 int bt_mesh_free_buf (struct net_buf_simple*) ;
 int esp_ble_mesh_client_model_send_msg (int *,TYPE_3__*,int ,int ,int ,int ,int,int ) ;
 int net_buf_simple_add_le16 (struct net_buf_simple*,int) ;
 int net_buf_simple_add_le32 (struct net_buf_simple*,int ) ;
 int net_buf_simple_add_mem (struct net_buf_simple*,int ,int ) ;
 int net_buf_simple_add_u8 (struct net_buf_simple*,int ) ;

esp_err_t example_send_fast_prov_info_set(esp_ble_mesh_model_t *model,
        example_msg_common_info_t *info,
        example_fast_prov_info_set_t *set)
{
    struct net_buf_simple *msg = ((void*)0);
    esp_err_t err;

    if (!model || !set || !set->ctx_flags || !info) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_LOGI(TAG, "min:       0x%04x, max:        0x%04x", set->unicast_min, set->unicast_max);
    ESP_LOGI(TAG, "flags:     0x%02x,   iv_index:   0x%08x", set->flags, set->iv_index);
    ESP_LOGI(TAG, "net_idx:   0x%04x, group_addr: 0x%04x", set->net_idx, set->group_addr);
    ESP_LOGI(TAG, "action:    0x%02x", set->action);
    ESP_LOG_BUFFER_HEX("FAST_PROV_OP: match_val", set->match_val, set->match_len);

    msg = bt_mesh_alloc_buf(18 + set->match_len);
    if (!msg) {
        return ESP_FAIL;
    }

    net_buf_simple_add_le16(msg, set->ctx_flags);
    if (set->ctx_flags & BIT(0)) {
        net_buf_simple_add_le16(msg, set->node_addr_cnt);
    }
    if (set->ctx_flags & BIT(1)) {
        net_buf_simple_add_le16(msg, set->unicast_min);
    }
    if (set->ctx_flags & BIT(2)) {
        net_buf_simple_add_le16(msg, set->unicast_max);
    }
    if (set->ctx_flags & BIT(3)) {
        net_buf_simple_add_u8(msg, set->flags);
    }
    if (set->ctx_flags & BIT(4)) {
        net_buf_simple_add_le32(msg, set->iv_index);
    }
    if (set->ctx_flags & BIT(5)) {
        net_buf_simple_add_le16(msg, set->net_idx);
    }
    if (set->ctx_flags & BIT(6)) {
        net_buf_simple_add_le16(msg, set->group_addr);
    }
    if (set->ctx_flags & BIT(7)) {
        net_buf_simple_add_le16(msg, set->prov_addr);
    }
    if (set->ctx_flags & BIT(8)) {
        net_buf_simple_add_mem(msg, set->match_val, set->match_len);
    }
    if (set->ctx_flags & BIT(9)) {
        net_buf_simple_add_u8(msg, set->action);
    }

    esp_ble_mesh_msg_ctx_t ctx = {
        .net_idx = info->net_idx,
        .app_idx = info->app_idx,
        .addr = info->dst,
        .send_rel = 0,
        .send_ttl = 0,
    };
    err = esp_ble_mesh_client_model_send_msg(model, &ctx,
            ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_INFO_SET,
            msg->len, msg->data, info->timeout, 1, info->role);

    bt_mesh_free_buf(msg);
    return err;
}
