
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_9__ ;
typedef struct TYPE_52__ TYPE_8__ ;
typedef struct TYPE_51__ TYPE_7__ ;
typedef struct TYPE_50__ TYPE_6__ ;
typedef struct TYPE_49__ TYPE_5__ ;
typedef struct TYPE_48__ TYPE_4__ ;
typedef struct TYPE_47__ TYPE_3__ ;
typedef struct TYPE_46__ TYPE_39__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_1__ ;
typedef struct TYPE_43__ TYPE_13__ ;
typedef struct TYPE_42__ TYPE_12__ ;
typedef struct TYPE_41__ TYPE_11__ ;
typedef struct TYPE_40__ TYPE_10__ ;


struct TYPE_47__ {scalar_t__ data; int (* handler ) (scalar_t__) ;} ;
typedef TYPE_3__ ngx_pool_cleanup_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_48__ {TYPE_12__* connection; int read_event_handler; int pool; int loc_conf; int srv_conf; int main_conf; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_49__ {scalar_t__ delay; unsigned int co; scalar_t__ pool; scalar_t__ vm_state; scalar_t__ co_ref; int premature; int loc_conf; int srv_conf; int main_conf; int client_addr_text; int listening; TYPE_6__* lmcf; } ;
typedef TYPE_5__ ngx_http_lua_timer_ctx_t ;
struct TYPE_50__ {scalar_t__ running_timers; scalar_t__ max_running_timers; int pending_timers; } ;
typedef TYPE_6__ ngx_http_lua_main_conf_t ;
struct TYPE_45__ {unsigned int co; int co_top; int co_status; scalar_t__ co_ref; } ;
struct TYPE_51__ {int entered_content_phase; TYPE_2__* cur_co_ctx; int context; int * cleanup; TYPE_2__ entry_co_ctx; scalar_t__ vm_state; } ;
typedef TYPE_7__ ngx_http_lua_ctx_t ;
struct TYPE_52__ {TYPE_13__* error_log; } ;
typedef TYPE_8__ ngx_http_core_loc_conf_t ;
struct TYPE_53__ {int handler; TYPE_7__* data; } ;
typedef TYPE_9__ ngx_http_cleanup_t ;
struct TYPE_40__ {int data; } ;
typedef TYPE_10__ ngx_event_t ;
struct TYPE_41__ {TYPE_1__* log; int addr_text; int listening; } ;
typedef TYPE_11__ ngx_connection_t ;
typedef int lua_State ;
struct TYPE_46__ {int log; } ;
struct TYPE_44__ {int log_level; int file; TYPE_11__* data; int handler; } ;
struct TYPE_43__ {int log_level; int file; } ;
struct TYPE_42__ {int log; } ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;
 int NGX_HTTP_LUA_CO_RUNNING ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_CONNECTION ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int coroutines_key ;
 int dd (char*,...) ;
 int luaL_unref (unsigned int,int,scalar_t__) ;
 int lua_gettop (unsigned int) ;
 int lua_insert (unsigned int,int) ;
 int lua_pushboolean (unsigned int,int ) ;
 int lua_pushlightuserdata (unsigned int,int ) ;
 int lua_rawget (unsigned int,int ) ;
 int lua_settop (unsigned int,int ) ;
 TYPE_39__* ngx_cycle ;
 int ngx_destroy_pool (scalar_t__) ;
 int ngx_exiting ;
 int ngx_free (TYPE_10__*) ;
 int ngx_http_block_reading ;
 TYPE_9__* ngx_http_cleanup_add (TYPE_4__*,int ) ;
 int ngx_http_core_module ;
 TYPE_8__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_http_lua_cleanup_vm (scalar_t__) ;
 int ngx_http_lua_close_fake_connection (TYPE_11__*) ;
 scalar_t__ ngx_http_lua_content_run_posted_threads (int *,TYPE_4__*,TYPE_7__*,int) ;
 TYPE_7__* ngx_http_lua_create_ctx (TYPE_4__*) ;
 TYPE_11__* ngx_http_lua_create_fake_connection (scalar_t__) ;
 TYPE_4__* ngx_http_lua_create_fake_request (TYPE_11__*) ;
 int ngx_http_lua_finalize_request (TYPE_4__*,scalar_t__) ;
 int * ngx_http_lua_get_lua_vm (TYPE_4__*,TYPE_7__*) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_log_timer_error ;
 int ngx_http_lua_request_cleanup_handler ;
 scalar_t__ ngx_http_lua_run_thread (int *,TYPE_4__*,TYPE_7__*,int) ;
 int ngx_http_lua_set_req (unsigned int,TYPE_4__*) ;
 scalar_t__ ngx_http_lua_timer_copy (TYPE_5__*) ;
 int ngx_http_set_connection_log (TYPE_12__*,TYPE_13__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,unsigned int) ;
 int ngx_memcpy (TYPE_5__*,int ,int) ;
 TYPE_3__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_set_connection_log (TYPE_12__*,TYPE_13__*) ;

__attribute__((used)) static void
ngx_http_lua_timer_handler(ngx_event_t *ev)
{
    int n;
    lua_State *L;
    ngx_int_t rc;
    ngx_connection_t *c = ((void*)0);
    ngx_http_request_t *r = ((void*)0);
    ngx_http_lua_ctx_t *ctx;
    ngx_http_cleanup_t *cln;
    ngx_pool_cleanup_t *pcln;

    ngx_http_lua_timer_ctx_t tctx;
    ngx_http_lua_main_conf_t *lmcf;
    ngx_http_core_loc_conf_t *clcf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "lua ngx.timer expired");

    ngx_memcpy(&tctx, ev->data, sizeof(ngx_http_lua_timer_ctx_t));
    ngx_free(ev);

    lmcf = tctx.lmcf;

    lmcf->pending_timers--;

    if (!ngx_exiting && tctx.delay > 0) {
        rc = ngx_http_lua_timer_copy(&tctx);
        if (rc != NGX_OK) {
            ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "failed to create the next timer of delay %ud ms",
                          (unsigned) tctx.delay);
        }
    }

    if (lmcf->running_timers >= lmcf->max_running_timers) {
        ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "%i lua_max_running_timers are not enough",
                      lmcf->max_running_timers);
        goto failed;
    }

    c = ngx_http_lua_create_fake_connection(tctx.pool);
    if (c == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to create fake connection to run timer (co: %p)",
                      tctx.co);
        goto failed;
    }

    c->log->handler = ngx_http_lua_log_timer_error;
    c->log->data = c;

    c->listening = tctx.listening;
    c->addr_text = tctx.client_addr_text;

    r = ngx_http_lua_create_fake_request(c);
    if (r == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to create fake request to run timer (co: %p)",
                      tctx.co);
        goto failed;
    }

    r->main_conf = tctx.main_conf;
    r->srv_conf = tctx.srv_conf;
    r->loc_conf = tctx.loc_conf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
    c->log->file = clcf->error_log->file;

    if (!(c->log->log_level & NGX_LOG_DEBUG_CONNECTION)) {
        c->log->log_level = clcf->error_log->log_level;
    }



    dd("lmcf: %p", lmcf);

    ctx = ngx_http_lua_create_ctx(r);
    if (ctx == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to create ctx to run timer (co: %p)", tctx.co);
        goto failed;
    }

    if (tctx.vm_state) {
        ctx->vm_state = tctx.vm_state;

        pcln = ngx_pool_cleanup_add(r->pool, 0);
        if (pcln == ((void*)0)) {
            ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "failed to add vm cleanup to run timer (co: %p)",
                          tctx.co);
            goto failed;
        }

        pcln->handler = ngx_http_lua_cleanup_vm;
        pcln->data = tctx.vm_state;
    }

    ctx->cur_co_ctx = &ctx->entry_co_ctx;

    L = ngx_http_lua_get_lua_vm(r, ctx);

    cln = ngx_http_cleanup_add(r, 0);
    if (cln == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to add request cleanup to run timer (co: %p)",
                      tctx.co);
        goto failed;
    }

    cln->handler = ngx_http_lua_request_cleanup_handler;
    cln->data = ctx;
    ctx->cleanup = &cln->handler;

    ctx->entered_content_phase = 1;
    ctx->context = NGX_HTTP_LUA_CONTEXT_TIMER;

    r->read_event_handler = ngx_http_block_reading;

    ctx->cur_co_ctx->co_ref = tctx.co_ref;
    ctx->cur_co_ctx->co = tctx.co;
    ctx->cur_co_ctx->co_status = NGX_HTTP_LUA_CO_RUNNING;

    dd("r connection: %p, log %p", r->connection, r->connection->log);


    ngx_http_lua_set_req(tctx.co, r);

    lmcf->running_timers++;

    lua_pushboolean(tctx.co, tctx.premature);

    n = lua_gettop(tctx.co);
    if (n > 2) {
        lua_insert(tctx.co, 2);
    }





    rc = ngx_http_lua_run_thread(L, r, ctx, n - 1);

    dd("timer lua run thread: %d", (int) rc);

    if (rc == NGX_ERROR || rc >= NGX_OK) {


    } else if (rc == NGX_AGAIN) {
        rc = ngx_http_lua_content_run_posted_threads(L, r, ctx, 0);

    } else if (rc == NGX_DONE) {
        rc = ngx_http_lua_content_run_posted_threads(L, r, ctx, 1);

    } else {
        rc = NGX_OK;
    }

    ngx_http_lua_finalize_request(r, rc);
    return;

failed:

    if (tctx.co_ref && tctx.co) {
        lua_pushlightuserdata(tctx.co, ngx_http_lua_lightudata_mask(
                              coroutines_key));
        lua_rawget(tctx.co, LUA_REGISTRYINDEX);
        luaL_unref(tctx.co, -1, tctx.co_ref);
        lua_settop(tctx.co, 0);
    }

    if (tctx.vm_state) {
        ngx_http_lua_cleanup_vm(tctx.vm_state);
    }

    if (c) {
        ngx_http_lua_close_fake_connection(c);

    } else if (tctx.pool) {
        ngx_destroy_pool(tctx.pool);
    }
}
