
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct tws_softc {struct tws_request** q_tail; int * q_head; int q_lock; } ;
struct tws_request {struct tws_request* prev; int * next; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

struct tws_request *
tws_q_remove_tail(struct tws_softc *sc, u_int8_t q_type )
{

    struct tws_request *r;

    mtx_assert(&sc->q_lock, MA_OWNED);
    r = sc->q_tail[q_type];
    if ( !r )
        return(((void*)0));
    if ( r->next == ((void*)0) && r->prev == ((void*)0) ) {

        sc->q_head[q_type] = sc->q_tail[q_type] = ((void*)0);
    } else {
        sc->q_tail[q_type] = r->prev;
        r->prev->next = ((void*)0);
        r->next = ((void*)0);
        r->prev = ((void*)0);
    }
    return(r);
}
