
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_22__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_23__ {int requires_capture_filter; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_21__ {int * lengths; TYPE_3__ value; } ;
struct TYPE_24__ {char* content_chunkname; char* content_src_key; scalar_t__ content_handler; TYPE_2__ content_src; } ;
typedef TYPE_5__ ngx_http_lua_loc_conf_t ;
typedef scalar_t__ ngx_http_handler_pt ;
struct TYPE_25__ {int handler; } ;
typedef TYPE_6__ ngx_http_core_loc_conf_t ;
struct TYPE_26__ {TYPE_2__* complex_value; TYPE_3__* value; TYPE_8__* cf; } ;
typedef TYPE_7__ ngx_http_compile_complex_value_t ;
struct TYPE_27__ {int pool; TYPE_1__* args; } ;
typedef TYPE_8__ ngx_conf_t ;
struct TYPE_28__ {int * post; } ;
typedef TYPE_9__ ngx_command_t ;
struct TYPE_20__ {TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_HTTP_LUA_FILE_KEY_LEN ;
 char* NGX_HTTP_LUA_FILE_TAG ;
 size_t NGX_HTTP_LUA_FILE_TAG_LEN ;
 scalar_t__ NGX_HTTP_LUA_INLINE_KEY_LEN ;
 char* NGX_HTTP_LUA_INLINE_TAG ;
 size_t NGX_HTTP_LUA_INLINE_TAG_LEN ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 int ngx_conf_log_error (int ,TYPE_8__*,int ,char*) ;
 char* ngx_copy (char*,char*,size_t) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_7__*) ;
 TYPE_6__* ngx_http_conf_get_module_loc_conf (TYPE_8__*,int ) ;
 TYPE_4__* ngx_http_conf_get_module_main_conf (TYPE_8__*,int ) ;
 int ngx_http_core_module ;
 int ngx_http_lua_content_handler ;
 int * ngx_http_lua_content_handler_inline ;
 char* ngx_http_lua_digest_hex (char*,int ,scalar_t__) ;
 char* ngx_http_lua_gen_chunk_name (TYPE_8__*,char*,int,size_t*) ;
 int ngx_http_lua_module ;
 int ngx_memzero (TYPE_7__*,int) ;
 char* ngx_palloc (int ,scalar_t__) ;

char *
ngx_http_lua_content_by_lua(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    size_t chunkname_len;
    u_char *p;
    u_char *chunkname;
    ngx_str_t *value;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_lua_main_conf_t *lmcf;
    ngx_http_lua_loc_conf_t *llcf = conf;

    ngx_http_compile_complex_value_t ccv;

    dd("enter");


    if (cmd->post == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    if (llcf->content_handler) {
        return "is duplicate";
    }

    value = cf->args->elts;

    dd("value[0]: %.*s", (int) value[0].len, value[0].data);
    dd("value[1]: %.*s", (int) value[1].len, value[1].data);

    if (value[1].len == 0) {

        ngx_conf_log_error(NGX_LOG_ERR, cf, 0,
                           "invalid location config: no runnable Lua code");
        return NGX_CONF_ERROR;
    }

    if (cmd->post == ngx_http_lua_content_handler_inline) {
        chunkname = ngx_http_lua_gen_chunk_name(cf, "content_by_lua",
                                                sizeof("content_by_lua") - 1,
                                                &chunkname_len);
        if (chunkname == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        llcf->content_chunkname = chunkname;

        dd("chunkname: %s", chunkname);



        llcf->content_src.value = value[1];

        p = ngx_palloc(cf->pool,
                       chunkname_len + NGX_HTTP_LUA_INLINE_KEY_LEN + 1);
        if (p == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        llcf->content_src_key = p;

        p = ngx_copy(p, chunkname, chunkname_len);
        p = ngx_copy(p, NGX_HTTP_LUA_INLINE_TAG, NGX_HTTP_LUA_INLINE_TAG_LEN);
        p = ngx_http_lua_digest_hex(p, value[1].data, value[1].len);
        *p = '\0';

    } else {
        ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));
        ccv.cf = cf;
        ccv.value = &value[1];
        ccv.complex_value = &llcf->content_src;

        if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        if (llcf->content_src.lengths == ((void*)0)) {

            p = ngx_palloc(cf->pool, NGX_HTTP_LUA_FILE_KEY_LEN + 1);
            if (p == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            llcf->content_src_key = p;

            p = ngx_copy(p, NGX_HTTP_LUA_FILE_TAG, NGX_HTTP_LUA_FILE_TAG_LEN);
            p = ngx_http_lua_digest_hex(p, value[1].data, value[1].len);
            *p = '\0';
        }
    }

    llcf->content_handler = (ngx_http_handler_pt) cmd->post;

    lmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_lua_module);

    lmcf->requires_capture_filter = 1;


    clcf = ngx_http_conf_get_module_loc_conf(cf, ngx_http_core_module);
    if (clcf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    clcf->handler = ngx_http_lua_content_handler;

    return NGX_CONF_OK;
}
