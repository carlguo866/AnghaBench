
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_20__ {int mask; int nbufs; int cl_size; TYPE_6__* info; scalar_t__ mlen; TYPE_4__* shadow; int volatile* lanai; } ;
struct TYPE_16__ {int mask; TYPE_2__* info; int volatile* lanai; } ;
struct TYPE_14__ {int volatile* send_stop; int volatile* send_go; int volatile* lanai; } ;
struct TYPE_13__ {TYPE_5__* ifp; } ;
struct mxge_slice_state {TYPE_7__ rx_big; TYPE_8__* sc; TYPE_3__ rx_small; TYPE_1__ tx; TYPE_10__ lc; } ;
struct TYPE_21__ {int dev; TYPE_5__* ifp; scalar_t__ sram; struct mxge_slice_state* ss; } ;
typedef TYPE_8__ mxge_softc_t ;
struct TYPE_22__ {int data0; } ;
typedef TYPE_9__ mxge_cmd_t ;
typedef int mcp_kreq_ether_send_t ;
typedef int mcp_kreq_ether_recv_t ;
typedef int bus_dmamap_t ;
struct TYPE_19__ {int map; } ;
struct TYPE_18__ {scalar_t__ if_mtu; } ;
struct TYPE_17__ {int addr_low; int addr_high; } ;
struct TYPE_15__ {int map; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int MXGEFW_CMD_GET_BIG_RX_OFFSET ;
 int MXGEFW_CMD_GET_SEND_OFFSET ;
 int MXGEFW_CMD_GET_SMALL_RX_OFFSET ;
 scalar_t__ MXGEFW_ETH_SEND_GO ;
 scalar_t__ MXGEFW_ETH_SEND_STOP ;
 scalar_t__ MXGEFW_PAD ;
 int device_printf (int ,char*,...) ;
 int mxge_get_buf_big (struct mxge_slice_state*,int ,int) ;
 int mxge_get_buf_small (struct mxge_slice_state*,int ,int) ;
 int mxge_send_cmd (TYPE_8__*,int ,TYPE_9__*) ;
 int tcp_lro_init (TYPE_10__*) ;

__attribute__((used)) static int
mxge_slice_open(struct mxge_slice_state *ss, int nbufs, int cl_size)
{
 mxge_softc_t *sc;
 mxge_cmd_t cmd;
 bus_dmamap_t map;
 int err, i, slice;


 sc = ss->sc;
 slice = ss - sc->ss;




 ss->lc.ifp = sc->ifp;



 err = 0;


 if (slice == 0) {

  cmd.data0 = slice;
  err = mxge_send_cmd(sc, MXGEFW_CMD_GET_SEND_OFFSET, &cmd);
  ss->tx.lanai =
   (volatile mcp_kreq_ether_send_t *)(sc->sram + cmd.data0);
  ss->tx.send_go = (volatile uint32_t *)
   (sc->sram + MXGEFW_ETH_SEND_GO + 64 * slice);
  ss->tx.send_stop = (volatile uint32_t *)
  (sc->sram + MXGEFW_ETH_SEND_STOP + 64 * slice);

 }

 cmd.data0 = slice;
 err |= mxge_send_cmd(sc,
        MXGEFW_CMD_GET_SMALL_RX_OFFSET, &cmd);
 ss->rx_small.lanai =
  (volatile mcp_kreq_ether_recv_t *)(sc->sram + cmd.data0);
 cmd.data0 = slice;
 err |= mxge_send_cmd(sc, MXGEFW_CMD_GET_BIG_RX_OFFSET, &cmd);
 ss->rx_big.lanai =
  (volatile mcp_kreq_ether_recv_t *)(sc->sram + cmd.data0);

 if (err != 0) {
  device_printf(sc->dev,
         "failed to get ring sizes or locations\n");
  return EIO;
 }


 for (i = 0; i <= ss->rx_small.mask; i++) {
  map = ss->rx_small.info[i].map;
  err = mxge_get_buf_small(ss, map, i);
  if (err) {
   device_printf(sc->dev, "alloced %d/%d smalls\n",
          i, ss->rx_small.mask + 1);
   return ENOMEM;
  }
 }
 for (i = 0; i <= ss->rx_big.mask; i++) {
  ss->rx_big.shadow[i].addr_low = 0xffffffff;
  ss->rx_big.shadow[i].addr_high = 0xffffffff;
 }
 ss->rx_big.nbufs = nbufs;
 ss->rx_big.cl_size = cl_size;
 ss->rx_big.mlen = ss->sc->ifp->if_mtu + ETHER_HDR_LEN +
  ETHER_VLAN_ENCAP_LEN + MXGEFW_PAD;
 for (i = 0; i <= ss->rx_big.mask; i += ss->rx_big.nbufs) {
  map = ss->rx_big.info[i].map;
  err = mxge_get_buf_big(ss, map, i);
  if (err) {
   device_printf(sc->dev, "alloced %d/%d bigs\n",
          i, ss->rx_big.mask + 1);
   return ENOMEM;
  }
 }
 return 0;
}
