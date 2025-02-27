
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_24__ ;
typedef struct TYPE_37__ TYPE_20__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_19__ ;
typedef struct TYPE_34__ TYPE_18__ ;
typedef struct TYPE_33__ TYPE_17__ ;
typedef struct TYPE_32__ TYPE_16__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
struct TYPE_33__ {int constants; int * mrb; } ;
typedef TYPE_17__ h2o_mruby_shared_context_t ;
struct TYPE_26__ {int generator; int error_stream; } ;
struct TYPE_34__ {TYPE_24__* req; TYPE_10__ refs; int error_stream; int rack_input; TYPE_11__* ctx; } ;
typedef TYPE_18__ h2o_mruby_generator_t ;
struct TYPE_35__ {char* base; int len; } ;
typedef TYPE_19__ h2o_iovec_t ;
struct TYPE_45__ {char* base; int len; } ;
struct TYPE_46__ {TYPE_8__ name; } ;
struct TYPE_44__ {size_t size; TYPE_19__* entries; } ;
struct TYPE_43__ {int get_peername; int get_sockname; } ;
struct TYPE_42__ {scalar_t__ len; int * base; } ;
struct TYPE_41__ {char* base; int len; } ;
struct TYPE_36__ {char* base; int len; } ;
struct TYPE_39__ {TYPE_1__ host; } ;
struct TYPE_40__ {TYPE_2__ authority; } ;
struct TYPE_32__ {char* base; int len; } ;
struct TYPE_29__ {size_t len; } ;
struct TYPE_28__ {char* base; int len; } ;
struct TYPE_38__ {scalar_t__ query_at; int reprocess_if_too_early; int remaining_reprocesses; int remaining_delegations; TYPE_9__* scheme; TYPE_20__* conn; int headers; int pool; TYPE_7__ env; TYPE_5__ entity; TYPE_4__ authority; int version; TYPE_3__* hostconf; TYPE_16__ path; TYPE_15__* pathconf; TYPE_13__ path_normalized; TYPE_12__ method; } ;
struct TYPE_37__ {TYPE_6__* callbacks; } ;
struct TYPE_30__ {size_t len; char* base; } ;
struct TYPE_31__ {TYPE_14__ path; } ;
struct TYPE_27__ {TYPE_17__* shared; } ;


 int H2O_MRUBY_ERROR_STREAM_CLASS ;
 int H2O_MRUBY_LIT_CONTENT_LENGTH ;
 int H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS ;
 int H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES ;
 int H2O_MRUBY_LIT_PATH_INFO ;
 int H2O_MRUBY_LIT_QUERY_STRING ;
 int H2O_MRUBY_LIT_RACK_EARLY_HINTS ;
 int H2O_MRUBY_LIT_RACK_ERRORS ;
 int H2O_MRUBY_LIT_RACK_HIJACK_ ;
 int H2O_MRUBY_LIT_RACK_INPUT ;
 int H2O_MRUBY_LIT_RACK_MULTIPROCESS ;
 int H2O_MRUBY_LIT_RACK_MULTITHREAD ;
 int H2O_MRUBY_LIT_RACK_RUN_ONCE ;
 int H2O_MRUBY_LIT_RACK_URL_SCHEME ;
 int H2O_MRUBY_LIT_REMOTE_ADDR ;
 int H2O_MRUBY_LIT_REMOTE_PORT ;
 int H2O_MRUBY_LIT_REQUEST_METHOD ;
 int H2O_MRUBY_LIT_SCRIPT_NAME ;
 int H2O_MRUBY_LIT_SERVER_ADDR ;
 int H2O_MRUBY_LIT_SERVER_NAME ;
 int H2O_MRUBY_LIT_SERVER_PORT ;
 int H2O_MRUBY_LIT_SERVER_PROTOCOL ;
 int H2O_MRUBY_LIT_SERVER_SOFTWARE ;
 int H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE ;
 int H2O_TOKEN_EARLY_DATA ;
 int H2O_TOKEN_HOST ;
 scalar_t__ SIZE_MAX ;
 int assert (int) ;
 int build_path_info (int *,TYPE_24__*,size_t) ;
 int error_stream_type ;
 scalar_t__ h2o_conn_is_early_data (TYPE_20__*) ;
 int h2o_mruby_create_data_instance (int *,int ,int ,int *) ;
 int h2o_mruby_iterate_native_headers (TYPE_17__*,int *,int *,int ,int ) ;
 int h2o_mruby_new_str (int *,char*,int) ;
 int h2o_mruby_token_env_key (TYPE_17__*,int ) ;
 size_t h2o_stringify_protocol_version (char*,int ) ;
 int iterate_headers_callback ;
 int mrb_ary_entry (int ,int ) ;
 int mrb_false_value () ;
 int mrb_fixnum_value (int ) ;
 int mrb_hash_fetch (int *,int ,int ,int ) ;
 int mrb_hash_new_capa (int *,int) ;
 int mrb_hash_set (int *,int ,int ,int ) ;
 int mrb_input_stream_set_data (int *,int ,int *,int ,int ,int ,int *) ;
 int mrb_input_stream_value (int *,int *,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_obj_ptr (int ) ;
 int mrb_obj_value (int ) ;
 int mrb_proc_new_cfunc_with_env (int *,int ,int,int *) ;
 int mrb_str_new_lit (int *,char*) ;
 int mrb_true_value () ;
 int on_rack_input_free ;
 int send_early_hints_proc ;
 int sprintf (char*,char*,scalar_t__) ;
 int stringify_address (TYPE_20__*,int ,int *,int *,int *) ;

__attribute__((used)) static mrb_value build_env(h2o_mruby_generator_t *generator)
{
    h2o_mruby_shared_context_t *shared = generator->ctx->shared;
    mrb_state *mrb = shared->mrb;
    mrb_value env = mrb_hash_new_capa(mrb, 16);
    char http_version[sizeof("HTTP/1.0")];
    size_t http_version_sz;


    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_REQUEST_METHOD),
                 h2o_mruby_new_str(mrb, generator->req->method.base, generator->req->method.len));

    size_t confpath_len_wo_slash = generator->req->pathconf->path.len;
    if (generator->req->pathconf->path.base[generator->req->pathconf->path.len - 1] == '/')
        --confpath_len_wo_slash;
    assert(confpath_len_wo_slash <= generator->req->path_normalized.len);

    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_SCRIPT_NAME),
                 h2o_mruby_new_str(mrb, generator->req->pathconf->path.base, confpath_len_wo_slash));
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_PATH_INFO),
                 build_path_info(mrb, generator->req, confpath_len_wo_slash));
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_QUERY_STRING),
                 generator->req->query_at != SIZE_MAX
                     ? h2o_mruby_new_str(mrb, generator->req->path.base + generator->req->query_at + 1,
                                         generator->req->path.len - (generator->req->query_at + 1))
                     : mrb_str_new_lit(mrb, ""));
    mrb_hash_set(
        mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_SERVER_NAME),
        h2o_mruby_new_str(mrb, generator->req->hostconf->authority.host.base, generator->req->hostconf->authority.host.len));
    http_version_sz = h2o_stringify_protocol_version(http_version, generator->req->version);
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_SERVER_PROTOCOL),
                 h2o_mruby_new_str(mrb, http_version, http_version_sz));
    {
        mrb_value h, p;
        stringify_address(generator->req->conn, generator->req->conn->callbacks->get_sockname, mrb, &h, &p);
        if (!mrb_nil_p(h))
            mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_SERVER_ADDR), h);
        if (!mrb_nil_p(p))
            mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_SERVER_PORT), p);
    }
    mrb_hash_set(mrb, env, h2o_mruby_token_env_key(shared, H2O_TOKEN_HOST),
                 h2o_mruby_new_str(mrb, generator->req->authority.base, generator->req->authority.len));
    if (generator->req->entity.base != ((void*)0)) {
        char buf[32];
        int l = sprintf(buf, "%zu", generator->req->entity.len);
        mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_CONTENT_LENGTH), h2o_mruby_new_str(mrb, buf, l));
        generator->rack_input = mrb_input_stream_value(mrb, ((void*)0), 0);
        mrb_input_stream_set_data(mrb, generator->rack_input, generator->req->entity.base, (mrb_int)generator->req->entity.len, 0,
                                  on_rack_input_free, &generator->rack_input);
        mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_INPUT), generator->rack_input);
    }
    {
        mrb_value h, p;
        stringify_address(generator->req->conn, generator->req->conn->callbacks->get_peername, mrb, &h, &p);
        if (!mrb_nil_p(h))
            mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_REMOTE_ADDR), h);
        if (!mrb_nil_p(p))
            mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_REMOTE_PORT), p);
    }
    {
        size_t i;
        for (i = 0; i != generator->req->env.size; i += 2) {
            h2o_iovec_t *name = generator->req->env.entries + i, *value = name + 1;
            mrb_hash_set(mrb, env, h2o_mruby_new_str(mrb, name->base, name->len), h2o_mruby_new_str(mrb, value->base, value->len));
        }
    }


    h2o_mruby_iterate_native_headers(shared, &generator->req->pool, &generator->req->headers, iterate_headers_callback,
                                     mrb_obj_ptr(env));
    mrb_value early_data_key = h2o_mruby_token_env_key(shared, H2O_TOKEN_EARLY_DATA);
    int found_early_data = !mrb_nil_p(mrb_hash_fetch(mrb, env, early_data_key, mrb_nil_value()));
    if (!found_early_data && h2o_conn_is_early_data(generator->req->conn)) {
        mrb_hash_set(mrb, env, early_data_key, h2o_mruby_new_str(mrb, "1", 1));
        generator->req->reprocess_if_too_early = 1;
    }



    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_URL_SCHEME),
                 h2o_mruby_new_str(mrb, generator->req->scheme->name.base, generator->req->scheme->name.len));

    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_MULTITHREAD), mrb_false_value());
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_MULTIPROCESS), mrb_true_value());
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_RUN_ONCE), mrb_false_value());
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_HIJACK_), mrb_false_value());
    mrb_value error_stream = h2o_mruby_create_data_instance(
        shared->mrb, mrb_ary_entry(shared->constants, H2O_MRUBY_ERROR_STREAM_CLASS), generator->error_stream, &error_stream_type);
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_ERRORS), error_stream);
    generator->refs.error_stream = error_stream;
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_RACK_EARLY_HINTS),
                 mrb_obj_value(mrb_proc_new_cfunc_with_env(mrb, send_early_hints_proc, 1, &generator->refs.generator)));


    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_SERVER_SOFTWARE),
                 mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE));


    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS),
                 mrb_fixnum_value(generator->req->remaining_delegations));
    mrb_hash_set(mrb, env, mrb_ary_entry(shared->constants, H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES),
                 mrb_fixnum_value(generator->req->remaining_reprocesses));

    return env;
}
