
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_8__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_7__ {int release; int * curl; } ;
struct TYPE_6__ {int * priv; } ;
typedef int HttpTxPriv ;
typedef int HttpTxManager ;
typedef int ConnectionPool ;
typedef TYPE_2__ Connection ;
typedef int CURL ;


 int FALSE ;
 int HTTP_OK ;
 int TRUE ;
 TYPE_2__* connection_pool_get_connection (int *) ;
 int connection_pool_return_connection (int *,TYPE_2__*) ;
 int * find_connection_pool (int *,char const*) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char const*,char const*,char*) ;
 char* g_uri_escape_string (char const*,int *,int ) ;
 scalar_t__ http_put (int *,char*,char const*,int *,int ,int *,int *,int*,int *,int *,int ,int *) ;
 TYPE_3__* seaf ;
 int seaf_warning (char*,char const*,...) ;

int
http_tx_manager_lock_file (HttpTxManager *manager,
                           const char *host,
                           gboolean use_fileserver_port,
                           const char *token,
                           const char *repo_id,
                           const char *path)
{
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    ConnectionPool *pool;
    Connection *conn;
    CURL *curl;
    char *url;
    int status;
    int ret = 0;

    pool = find_connection_pool (priv, host);
    if (!pool) {
        seaf_warning ("Failed to create connection pool for host %s.\n", host);
        return -1;
    }

    conn = connection_pool_get_connection (pool);
    if (!conn) {
        seaf_warning ("Failed to get connection to host %s.\n", host);
        return -1;
    }

    curl = conn->curl;

    char *esc_path = g_uri_escape_string(path, ((void*)0), FALSE);
    if (!use_fileserver_port)
        url = g_strdup_printf ("%s/seafhttp/repo/%s/lock-file?p=%s", host, repo_id, esc_path);
    else
        url = g_strdup_printf ("%s/repo/%s/lock-file?p=%s", host, repo_id, esc_path);
    g_free (esc_path);

    if (http_put (curl, url, token, ((void*)0), 0, ((void*)0), ((void*)0),
                  &status, ((void*)0), ((void*)0), TRUE, ((void*)0)) < 0) {
        conn->release = TRUE;
        ret = -1;
        goto out;
    }

    if (status != HTTP_OK) {
        seaf_warning ("Bad response code for PUT %s: %d.\n", url, status);
        ret = -1;
    }

out:
    g_free (url);
    connection_pool_return_connection (pool, conn);
    return ret;
}
