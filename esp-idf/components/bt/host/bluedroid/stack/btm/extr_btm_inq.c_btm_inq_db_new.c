
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int remote_bd_addr; } ;
struct TYPE_10__ {TYPE_2__ results; } ;
struct TYPE_11__ {scalar_t__ time_of_resp; void* in_use; TYPE_3__ inq_info; } ;
typedef TYPE_4__ tINQ_DB_ENT ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_8__ {TYPE_4__* inq_db; } ;
struct TYPE_12__ {TYPE_1__ btm_inq_vars; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_INQ_DB_SIZE ;
 void* TRUE ;
 TYPE_7__ btm_cb ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;

tINQ_DB_ENT *btm_inq_db_new (BD_ADDR p_bda)
{
    UINT16 xx;
    tINQ_DB_ENT *p_ent = btm_cb.btm_inq_vars.inq_db;
    tINQ_DB_ENT *p_old = btm_cb.btm_inq_vars.inq_db;
    UINT32 ot = 0xFFFFFFFF;

    for (xx = 0; xx < BTM_INQ_DB_SIZE; xx++, p_ent++) {
        if (!p_ent->in_use) {
            memset (p_ent, 0, sizeof (tINQ_DB_ENT));
            memcpy (p_ent->inq_info.results.remote_bd_addr, p_bda, BD_ADDR_LEN);
            p_ent->in_use = TRUE;

            return (p_ent);
        }

        if (p_ent->time_of_resp < ot) {
            p_old = p_ent;
            ot = p_ent->time_of_resp;
        }
    }



    memset (p_old, 0, sizeof (tINQ_DB_ENT));
    memcpy (p_old->inq_info.results.remote_bd_addr, p_bda, BD_ADDR_LEN);
    p_old->in_use = TRUE;

    return (p_old);
}
