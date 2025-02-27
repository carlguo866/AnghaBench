
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union frame_map {scalar_t__ raw; TYPE_5__* v2; TYPE_3__* v1; } ;
typedef int uint8_t ;
struct ring {scalar_t__ type; int version; unsigned int rd_num; TYPE_1__* rd; } ;
struct pollfd {int fd; int events; scalar_t__ revents; } ;
typedef int pfd ;
struct TYPE_9__ {int tp_snaplen; int tp_mac; } ;
struct TYPE_10__ {TYPE_4__ tp_h; } ;
struct TYPE_7__ {int tp_snaplen; int tp_mac; } ;
struct TYPE_8__ {TYPE_2__ tp_h; } ;
struct TYPE_6__ {scalar_t__ iov_base; } ;


 int NUM_PACKETS ;
 scalar_t__ PACKET_RX_RING ;
 int POLLERR ;
 int POLLIN ;
 int PORT_BASE ;


 scalar_t__ __v1_v2_rx_kernel_ready (scalar_t__,int) ;
 int __v1_v2_rx_user_ready (scalar_t__,int) ;
 int bug_on (int) ;
 int exit (int) ;
 int fprintf (int ,char*,int,int,...) ;
 int memset (struct pollfd*,int ,int) ;
 int pair_udp_close (int*) ;
 int pair_udp_open (int*,int ) ;
 int pair_udp_send (int*,int) ;
 int poll (struct pollfd*,int,int) ;
 int status_bar_update () ;
 int stderr ;
 int test_payload (int *,int) ;
 int total_bytes ;
 int total_packets ;

__attribute__((used)) static void walk_v1_v2_rx(int sock, struct ring *ring)
{
 struct pollfd pfd;
 int udp_sock[2];
 union frame_map ppd;
 unsigned int frame_num = 0;

 bug_on(ring->type != PACKET_RX_RING);

 pair_udp_open(udp_sock, PORT_BASE);

 memset(&pfd, 0, sizeof(pfd));
 pfd.fd = sock;
 pfd.events = POLLIN | POLLERR;
 pfd.revents = 0;

 pair_udp_send(udp_sock, NUM_PACKETS);

 while (total_packets < NUM_PACKETS * 2) {
  while (__v1_v2_rx_kernel_ready(ring->rd[frame_num].iov_base,
            ring->version)) {
   ppd.raw = ring->rd[frame_num].iov_base;

   switch (ring->version) {
   case 129:
    test_payload((uint8_t *) ppd.raw + ppd.v1->tp_h.tp_mac,
          ppd.v1->tp_h.tp_snaplen);
    total_bytes += ppd.v1->tp_h.tp_snaplen;
    break;

   case 128:
    test_payload((uint8_t *) ppd.raw + ppd.v2->tp_h.tp_mac,
          ppd.v2->tp_h.tp_snaplen);
    total_bytes += ppd.v2->tp_h.tp_snaplen;
    break;
   }

   status_bar_update();
   total_packets++;

   __v1_v2_rx_user_ready(ppd.raw, ring->version);

   frame_num = (frame_num + 1) % ring->rd_num;
  }

  poll(&pfd, 1, 1);
 }

 pair_udp_close(udp_sock);

 if (total_packets != 2 * NUM_PACKETS) {
  fprintf(stderr, "walk_v%d_rx: received %u out of %u pkts\n",
   ring->version, total_packets, NUM_PACKETS);
  exit(1);
 }

 fprintf(stderr, " %u pkts (%u bytes)", NUM_PACKETS, total_bytes >> 1);
}
