
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_6__ {TYPE_1__ disc_result; } ;
typedef TYPE_2__ tBTA_HF_CLIENT_DATA ;


 scalar_t__ SDP_DB_FULL ;
 scalar_t__ SDP_SUCCESS ;
 int bta_hf_client_free_db (TYPE_2__*) ;
 int bta_hf_client_sdp_find_attr () ;

void bta_hf_client_disc_acp_res(tBTA_HF_CLIENT_DATA *p_data)
{

    if (p_data->disc_result.status == SDP_SUCCESS ||
            p_data->disc_result.status == SDP_DB_FULL) {

        bta_hf_client_sdp_find_attr();
    }


    bta_hf_client_free_db(p_data);
}
