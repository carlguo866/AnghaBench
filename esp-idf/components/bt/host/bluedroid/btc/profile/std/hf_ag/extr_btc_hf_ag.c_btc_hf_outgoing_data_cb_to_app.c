
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int (* btc_hf_outgoing_data_cb ) (int *,int ) ;} ;


 TYPE_1__* hf_local_param ;
 int stub1 (int *,int ) ;

uint32_t btc_hf_outgoing_data_cb_to_app(uint8_t *data, uint32_t len)
{
    int idx = 0;

    if (hf_local_param[idx].btc_hf_outgoing_data_cb) {
        return hf_local_param[idx].btc_hf_outgoing_data_cb(data, len);
    } else {
        return 0;
    }
}
