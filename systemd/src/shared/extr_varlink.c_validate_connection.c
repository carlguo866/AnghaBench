
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ uid; scalar_t__ n_connections; scalar_t__ connections_max; unsigned int connections_per_uid_max; int by_uid; int flags; } ;
typedef struct ucred const VarlinkServer ;


 scalar_t__ FLAGS_SET (int ,int ) ;
 unsigned int PTR_TO_UINT (int ) ;
 int UID_TO_PTR (scalar_t__) ;
 int VARLINK_SERVER_ACCOUNT_UID ;
 int VARLINK_SERVER_MYSELF_ONLY ;
 int VARLINK_SERVER_ROOT_ONLY ;
 int assert (struct ucred const*) ;
 scalar_t__ getuid () ;
 int hashmap_get (int ,int ) ;
 int uid_is_valid (scalar_t__) ;
 int varlink_server_log (struct ucred const*,char*,...) ;

__attribute__((used)) static int validate_connection(VarlinkServer *server, const struct ucred *ucred) {
        int allowed = -1;

        assert(server);
        assert(ucred);

        if (FLAGS_SET(server->flags, VARLINK_SERVER_ROOT_ONLY))
                allowed = ucred->uid == 0;

        if (FLAGS_SET(server->flags, VARLINK_SERVER_MYSELF_ONLY))
                allowed = allowed > 0 || ucred->uid == getuid();

        if (allowed == 0) {

                varlink_server_log(server, "Unprivileged client attempted connection, refusing.");
                return 0;
        }

        if (server->n_connections >= server->connections_max) {
                varlink_server_log(server, "Connection limit of %u reached, refusing.", server->connections_max);
                return 0;
        }

        if (FLAGS_SET(server->flags, VARLINK_SERVER_ACCOUNT_UID)) {
                unsigned c;

                if (!uid_is_valid(ucred->uid)) {
                        varlink_server_log(server, "Client with invalid UID attempted connection, refusing.");
                        return 0;
                }

                c = PTR_TO_UINT(hashmap_get(server->by_uid, UID_TO_PTR(ucred->uid)));
                if (c >= server->connections_per_uid_max) {
                        varlink_server_log(server, "Per-UID connection limit of %u reached, refusing.",
                                           server->connections_per_uid_max);
                        return 0;
                }
        }

        return 1;
}
