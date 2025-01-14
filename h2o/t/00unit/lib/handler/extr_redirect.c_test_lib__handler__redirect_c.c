
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int h2o_pathconf_t ;
struct TYPE_14__ {int status; } ;
struct TYPE_16__ {void* path; void* method; } ;
struct TYPE_17__ {TYPE_13__ res; TYPE_2__ input; } ;
struct TYPE_19__ {TYPE_4__* body; TYPE_3__ req; } ;
typedef TYPE_5__ h2o_loopback_conn_t ;
typedef int h2o_hostconf_t ;
typedef int h2o_globalconf_t ;
struct TYPE_20__ {TYPE_1__* globalconf; } ;
struct TYPE_18__ {scalar_t__ size; } ;
struct TYPE_15__ {int hosts; } ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_LOCATION ;
 int check_header (TYPE_13__*,int ,char*) ;
 TYPE_9__ ctx ;
 int h2o_config_dispose (int *) ;
 int h2o_config_init (int *) ;
 int * h2o_config_register_host (int *,void*,int) ;
 int * h2o_config_register_path (int *,char*,int ) ;
 int h2o_context_dispose (TYPE_9__*) ;
 int h2o_context_init (TYPE_9__*,int ,int *) ;
 void* h2o_iovec_init (int ) ;
 TYPE_5__* h2o_loopback_create (TYPE_9__*,int ) ;
 int h2o_loopback_destroy (TYPE_5__*) ;
 int h2o_loopback_run_loop (TYPE_5__*) ;
 int h2o_redirect_register (int *,int ,int,char*) ;
 int ok (int) ;
 int test_loop ;

void test_lib__handler__redirect_c()
{
    h2o_globalconf_t globalconf;
    h2o_hostconf_t *hostconf;
    h2o_pathconf_t *pathconf;

    h2o_config_init(&globalconf);
    hostconf = h2o_config_register_host(&globalconf, h2o_iovec_init(H2O_STRLIT("default")), 65535);
    pathconf = h2o_config_register_path(hostconf, "/", 0);
    h2o_redirect_register(pathconf, 0, 301, "https://example.com/bar/");

    h2o_context_init(&ctx, test_loop, &globalconf);

    {
        h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
        conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
        h2o_loopback_run_loop(conn);
        ok(conn->req.res.status == 301);
        ok(check_header(&conn->req.res, H2O_TOKEN_LOCATION, "https://example.com/bar/"));
        ok(conn->body->size != 0);
        h2o_loopback_destroy(conn);
    }
    {
        h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = h2o_iovec_init(H2O_STRLIT("GET"));
        conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/abc"));
        h2o_loopback_run_loop(conn);
        ok(conn->req.res.status == 301);
        ok(check_header(&conn->req.res, H2O_TOKEN_LOCATION, "https://example.com/bar/abc"));
        ok(conn->body->size != 0);
        h2o_loopback_destroy(conn);
    }
    {
        h2o_loopback_conn_t *conn = h2o_loopback_create(&ctx, ctx.globalconf->hosts);
        conn->req.input.method = h2o_iovec_init(H2O_STRLIT("HEAD"));
        conn->req.input.path = h2o_iovec_init(H2O_STRLIT("/"));
        h2o_loopback_run_loop(conn);
        ok(conn->req.res.status == 301);
        ok(check_header(&conn->req.res, H2O_TOKEN_LOCATION, "https://example.com/bar/"));
        ok(conn->body->size == 0);
        h2o_loopback_destroy(conn);
    }

    h2o_context_dispose(&ctx);
    h2o_config_dispose(&globalconf);
}
