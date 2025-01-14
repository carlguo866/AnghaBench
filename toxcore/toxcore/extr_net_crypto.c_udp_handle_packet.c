
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_10__ {int mutex; void* direct_lastrecv_timev6; void* direct_lastrecv_timev4; } ;
struct TYPE_8__ {scalar_t__ family; } ;
struct TYPE_9__ {TYPE_1__ ip; } ;
typedef int Net_Crypto ;
typedef TYPE_2__ IP_Port ;
typedef TYPE_3__ Crypto_Connection ;


 scalar_t__ AF_INET ;
 int CRYPTO_MIN_PACKET_SIZE ;
 int MAX_CRYPTO_PACKET_SIZE ;
 scalar_t__ const NET_PACKET_CRYPTO_HS ;
 int crypto_id_ip_port (int *,TYPE_2__) ;
 TYPE_3__* get_crypto_connection (int *,int) ;
 scalar_t__ handle_new_connection_handshake (int *,TYPE_2__,scalar_t__ const*,int ) ;
 scalar_t__ handle_packet_connection (int *,int,scalar_t__ const*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 void* unix_time () ;

__attribute__((used)) static int udp_handle_packet(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    if (length <= CRYPTO_MIN_PACKET_SIZE || length > MAX_CRYPTO_PACKET_SIZE)
        return 1;

    Net_Crypto *c = object;
    int crypt_connection_id = crypto_id_ip_port(c, source);

    if (crypt_connection_id == -1) {
        if (packet[0] != NET_PACKET_CRYPTO_HS)
            return 1;

        if (handle_new_connection_handshake(c, source, packet, length) != 0)
            return 1;

        return 0;
    }

    if (handle_packet_connection(c, crypt_connection_id, packet, length, 1) != 0)
        return 1;

    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    pthread_mutex_lock(&conn->mutex);

    if (source.ip.family == AF_INET) {
        conn->direct_lastrecv_timev4 = unix_time();
    } else {
        conn->direct_lastrecv_timev6 = unix_time();
    }

    pthread_mutex_unlock(&conn->mutex);
    return 0;
}
