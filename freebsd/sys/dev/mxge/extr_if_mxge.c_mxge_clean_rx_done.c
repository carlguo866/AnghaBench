
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_8__ {size_t idx; int cnt; int mask; TYPE_3__* entry; } ;
struct mxge_slice_state {int lc; TYPE_2__* sc; TYPE_4__ rx_done; } ;
typedef TYPE_4__ mxge_rx_done_t ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ checksum; } ;
struct TYPE_6__ {TYPE_1__* ifp; } ;
struct TYPE_5__ {int if_capenable; } ;


 int IFCAP_LRO ;
 scalar_t__ MHLEN ;
 scalar_t__ MXGEFW_PAD ;
 scalar_t__ __predict_false (int) ;
 int mxge_rx_done_big (struct mxge_slice_state*,scalar_t__,scalar_t__,int) ;
 int mxge_rx_done_small (struct mxge_slice_state*,scalar_t__,scalar_t__,int) ;
 scalar_t__ ntohs (scalar_t__) ;
 int tcp_lro_flush_all (int *) ;

__attribute__((used)) static inline void
mxge_clean_rx_done(struct mxge_slice_state *ss)
{
 mxge_rx_done_t *rx_done = &ss->rx_done;
 int limit = 0;
 uint16_t length;
 uint16_t checksum;
 int lro;

 lro = ss->sc->ifp->if_capenable & IFCAP_LRO;
 while (rx_done->entry[rx_done->idx].length != 0) {
  length = ntohs(rx_done->entry[rx_done->idx].length);
  rx_done->entry[rx_done->idx].length = 0;
  checksum = rx_done->entry[rx_done->idx].checksum;
  if (length <= (MHLEN - MXGEFW_PAD))
   mxge_rx_done_small(ss, length, checksum, lro);
  else
   mxge_rx_done_big(ss, length, checksum, lro);
  rx_done->cnt++;
  rx_done->idx = rx_done->cnt & rx_done->mask;


  if (__predict_false(++limit > rx_done->mask / 2))
   break;
 }



}
