
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tBTM_LE_KEY_VALUE ;
struct TYPE_9__ {TYPE_2__* p_key_value; } ;
struct TYPE_10__ {TYPE_1__ ble_key; } ;
typedef TYPE_2__ tBTA_DM_SEC ;
struct TYPE_11__ {scalar_t__ act; } ;
typedef TYPE_3__ btc_msg_t ;


 scalar_t__ BTA_DM_BLE_KEY_EVT ;
 int assert (TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* osi_malloc (int) ;

void btc_dm_sec_arg_deep_copy(btc_msg_t *msg, void *dst, void *src)
{
    tBTA_DM_SEC *dst_dm_sec = (tBTA_DM_SEC *)dst;
    tBTA_DM_SEC *src_dm_sec = (tBTA_DM_SEC *)src;

    if (!src_dm_sec) {
        return;
    }

    assert(dst_dm_sec);
    memcpy(dst_dm_sec, src_dm_sec, sizeof(tBTA_DM_SEC));

    if (msg->act == BTA_DM_BLE_KEY_EVT) {
        dst_dm_sec->ble_key.p_key_value = osi_malloc(sizeof(tBTM_LE_KEY_VALUE));
        assert(src_dm_sec->ble_key.p_key_value);
        assert(dst_dm_sec->ble_key.p_key_value);
        memcpy(dst_dm_sec->ble_key.p_key_value, src_dm_sec->ble_key.p_key_value, sizeof(tBTM_LE_KEY_VALUE));
    }
}
