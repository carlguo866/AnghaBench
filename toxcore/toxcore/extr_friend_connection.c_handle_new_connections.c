
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ family; } ;
struct TYPE_20__ {TYPE_1__ ip; } ;
struct TYPE_19__ {int crypt_connection_id; int dht_temp_pk; int dht_ip_port_lastrecv; TYPE_5__ dht_ip_port; } ;
struct TYPE_18__ {int net_crypto; } ;
struct TYPE_17__ {int dht_public_key; TYPE_5__ source; int public_key; } ;
typedef TYPE_2__ New_Connection ;
typedef TYPE_3__ Friend_Connections ;
typedef TYPE_4__ Friend_Conn ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int accept_crypto_connection (int ,TYPE_2__*) ;
 int change_dht_pk (TYPE_3__*,int,int ) ;
 int connection_data_handler (int ,int,int *,TYPE_3__*,int) ;
 int connection_lossy_data_handler (int ,int,int *,TYPE_3__*,int) ;
 int connection_status_handler (int ,int,int *,TYPE_3__*,int) ;
 int dht_pk_callback ;
 TYPE_4__* get_conn (TYPE_3__*,int) ;
 int getfriend_conn_id_pk (TYPE_3__*,int ) ;
 int handle_lossy_packet ;
 int handle_packet ;
 int handle_status ;
 int nc_dht_pk_callback (int ,int,int *,TYPE_3__*,int) ;
 scalar_t__ public_key_cmp (int ,int ) ;
 int set_direct_ip_port (int ,int,TYPE_5__,int ) ;
 int unix_time () ;

__attribute__((used)) static int handle_new_connections(void *object, New_Connection *n_c)
{
    Friend_Connections *fr_c = object;
    int friendcon_id = getfriend_conn_id_pk(fr_c, n_c->public_key);
    Friend_Conn *friend_con = get_conn(fr_c, friendcon_id);

    if (friend_con) {

        if (friend_con->crypt_connection_id != -1)
            return -1;

        int id = accept_crypto_connection(fr_c->net_crypto, n_c);

        if (id == -1) {
            return -1;
        }

        connection_status_handler(fr_c->net_crypto, id, &handle_status, fr_c, friendcon_id);
        connection_data_handler(fr_c->net_crypto, id, &handle_packet, fr_c, friendcon_id);
        connection_lossy_data_handler(fr_c->net_crypto, id, &handle_lossy_packet, fr_c, friendcon_id);
        friend_con->crypt_connection_id = id;

        if (n_c->source.ip.family != AF_INET && n_c->source.ip.family != AF_INET6) {
            set_direct_ip_port(fr_c->net_crypto, friend_con->crypt_connection_id, friend_con->dht_ip_port, 0);
        } else {
            friend_con->dht_ip_port = n_c->source;
            friend_con->dht_ip_port_lastrecv = unix_time();
        }

        if (public_key_cmp(friend_con->dht_temp_pk, n_c->dht_public_key) != 0) {
            change_dht_pk(fr_c, friendcon_id, n_c->dht_public_key);
        }

        nc_dht_pk_callback(fr_c->net_crypto, id, &dht_pk_callback, fr_c, friendcon_id);
        return 0;
    }

    return -1;
}
