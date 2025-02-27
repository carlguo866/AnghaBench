
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int datalen; int segment; } ;
struct iscsi_tcp_conn {TYPE_3__ in; struct hash_desc* rx_hash; struct iscsi_conn* iscsi_conn; } ;
struct iscsi_conn {int data; TYPE_2__* session; scalar_t__ datadgst_en; } ;
struct hash_desc {int dummy; } ;
struct TYPE_5__ {TYPE_1__* tt; } ;
struct TYPE_4__ {int caps; } ;


 int CAP_DIGEST_OFFLOAD ;
 int iscsi_segment_init_linear (int *,int ,int ,int ,struct hash_desc*) ;
 int iscsi_tcp_data_recv_done ;

__attribute__((used)) static void
iscsi_tcp_data_recv_prep(struct iscsi_tcp_conn *tcp_conn)
{
 struct iscsi_conn *conn = tcp_conn->iscsi_conn;
 struct hash_desc *rx_hash = ((void*)0);

 if (conn->datadgst_en &&
     !(conn->session->tt->caps & CAP_DIGEST_OFFLOAD))
  rx_hash = tcp_conn->rx_hash;

 iscsi_segment_init_linear(&tcp_conn->in.segment,
    conn->data, tcp_conn->in.datalen,
    iscsi_tcp_data_recv_done, rx_hash);
}
