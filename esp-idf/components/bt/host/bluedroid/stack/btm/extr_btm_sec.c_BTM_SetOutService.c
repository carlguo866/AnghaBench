
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int security_flags; scalar_t__ service_id; scalar_t__ orig_mx_chan_id; int mx_proto_id; int psm; } ;
typedef TYPE_1__ tBTM_SEC_SERV_REC ;
struct TYPE_6__ {TYPE_1__* p_cur_service; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_7__ {TYPE_1__* p_out_serv; TYPE_1__* sec_serv_rec; } ;
typedef int BD_ADDR ;


 int BTM_SEC_IN_USE ;
 int BTM_SEC_MAX_SERVICE_RECORDS ;
 int BTM_TRACE_API (char*,scalar_t__,int ,int ,scalar_t__) ;
 TYPE_4__ btm_cb ;
 TYPE_2__* btm_find_dev (int ) ;

void BTM_SetOutService(BD_ADDR bd_addr, UINT8 service_id, UINT32 mx_chan_id)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    tBTM_SEC_SERV_REC *p_serv_rec = &btm_cb.sec_serv_rec[0];

    btm_cb.p_out_serv = p_serv_rec;
    p_dev_rec = btm_find_dev (bd_addr);

    for (int i = 0; i < BTM_SEC_MAX_SERVICE_RECORDS; i++, p_serv_rec++) {
        if ((p_serv_rec->security_flags & BTM_SEC_IN_USE)
                && (p_serv_rec->service_id == service_id)
                && (p_serv_rec->orig_mx_chan_id == mx_chan_id)) {
            BTM_TRACE_API("BTM_SetOutService p_out_serv id %d, psm 0x%04x, proto_id %d, chan_id %d\n",
                          p_serv_rec->service_id, p_serv_rec->psm, p_serv_rec->mx_proto_id, p_serv_rec->orig_mx_chan_id);
            btm_cb.p_out_serv = p_serv_rec;
            if (p_dev_rec) {
                p_dev_rec->p_cur_service = p_serv_rec;
            }
            break;
        }
    }
}
