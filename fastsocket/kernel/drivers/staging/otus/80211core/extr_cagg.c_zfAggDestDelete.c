
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct dest {void* vtxq; struct dest* next; TYPE_1__* tid_tx; } ;
struct TYPE_7__ {int ** dest; struct dest** Head; } ;
struct TYPE_6__ {scalar_t__ destLock; } ;
struct TYPE_5__ {int size; int aggTail; int aggHead; } ;
typedef TYPE_1__* TID_TX ;


 TYPE_4__ DESTQ ;
 TYPE_3__* wd ;
 int zfwMemFree (int *,struct dest*,int) ;
 int zm_agg_qlen (int *,int ,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfAggDestDelete(zdev_t* dev, u16_t Qtype, TID_TX tid_tx, void* vtxq)
{
    struct dest* dest, *temp;
    u16_t i;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if (wd->destLock) {
        zmw_leave_critical_section(dev);
        return;
    }



    for (i=0; i<4; i++) {
        if (!DESTQ.Head[i]) continue;
        dest = DESTQ.Head[i];
        if (!dest) continue;


        while (dest && (dest->next != DESTQ.Head[i])) {
            if (Qtype == 0 && dest->next->tid_tx == tid_tx){
                break;
            }
            if (Qtype == 1 && dest->next->vtxq == vtxq) {
                break;
            }
            dest = dest->next;
        }

        if ((Qtype == 0 && dest->next->tid_tx == tid_tx) || (Qtype == 1 && dest->next->vtxq == vtxq)) {

            tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);
            if (tid_tx->size) {
                zmw_leave_critical_section(dev);
                return;
            }
            if (!DESTQ.Head[i]) {
                temp = ((void*)0);
            }
            else {
                temp = dest->next;
                if (temp == dest) {
                    DESTQ.Head[i] = DESTQ.dest[i] = ((void*)0);

                }
                else {
                    dest->next = dest->next->next;
                }
            }

            if (temp == ((void*)0))
                { }
            else
                zfwMemFree(dev, temp, sizeof(struct dest));






        }

    }
    zmw_leave_critical_section(dev);
    return;
}
