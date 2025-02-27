
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int event; int fd; int dst; } ;
typedef TYPE_1__ network_socket ;
struct TYPE_15__ {TYPE_1__* server; TYPE_3__* config; } ;
typedef TYPE_2__ network_mysqld_con ;
struct TYPE_16__ {int address; TYPE_2__* listen_con; scalar_t__ lua_script; int admin_password; int admin_username; } ;
typedef TYPE_3__ chassis_plugin_config ;
struct TYPE_17__ {int event_base; int base_dir; } ;
typedef TYPE_4__ chassis ;


 int EV_PERSIST ;
 int EV_READ ;
 int G_STRLOC ;
 int event_add (int *,int *) ;
 int event_base_set (int ,int *) ;
 int event_set (int *,int ,int,int ,TYPE_2__*) ;
 int g_critical (char*,int ) ;
 scalar_t__ g_strdup_printf (char*,int ) ;
 scalar_t__ network_address_set_address (int ,int ) ;
 int network_mysqld_add_connection (TYPE_4__*,TYPE_2__*) ;
 int network_mysqld_admin_con_accept ;
 TYPE_2__* network_mysqld_con_new () ;
 int network_mysqld_server_connection_init (TYPE_2__*) ;
 scalar_t__ network_socket_bind (TYPE_1__*) ;
 TYPE_1__* network_socket_new () ;

__attribute__((used)) static int network_mysqld_admin_plugin_apply_config(chassis *chas, chassis_plugin_config *config) {
 network_mysqld_con *con;
 network_socket *listen_sock;


 if (!config->address) {
  g_critical("%s: Failed to get bind address, please set by --admin-address=<host:port>",
    G_STRLOC);
  return -1;
 }
 if (!config->admin_username) {
  g_critical("%s: --admin-username needs to be set",
    G_STRLOC);
  return -1;
 }
 if (!config->admin_password) {
  g_critical("%s: --admin-password needs to be set",
    G_STRLOC);
  return -1;
 }
 if (!config->lua_script) {
  config->lua_script = g_strdup_printf("%s/lib/mysql-proxy/lua/admin.lua", chas->base_dir);
 }




 con = network_mysqld_con_new();
 network_mysqld_add_connection(chas, con);
 con->config = config;

 config->listen_con = con;

 listen_sock = network_socket_new();
 con->server = listen_sock;


 network_mysqld_server_connection_init(con);


 if (0 != network_address_set_address(listen_sock->dst, config->address)) {
  return -1;
 }


 if (0 != network_socket_bind(listen_sock)) {
  return -1;
 }




 event_set(&(listen_sock->event), listen_sock->fd, EV_READ|EV_PERSIST, network_mysqld_admin_con_accept, con);
 event_base_set(chas->event_base, &(listen_sock->event));
 event_add(&(listen_sock->event), ((void*)0));

 return 0;
}
