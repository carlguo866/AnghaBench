
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {void (* cb ) (struct evrpc_status*,void*,void*,void*) ;void (* request_marshal ) (struct evbuffer*,void*) ;void (* reply_clear ) (void*) ;int (* reply_unmarshal ) (void*,struct evbuffer*) ;void* reply; void* request; void* cb_arg; int * name; int * evcon; int * hook_meta; struct evrpc_pool* pool; } ;
struct evrpc_pool {int dummy; } ;


 int mm_free (struct evrpc_request_wrapper*) ;
 scalar_t__ mm_malloc (int) ;
 int * mm_strdup (char const*) ;

struct evrpc_request_wrapper *
evrpc_make_request_ctx(
 struct evrpc_pool *pool, void *request, void *reply,
 const char *rpcname,
 void (*req_marshal)(struct evbuffer*, void *),
 void (*rpl_clear)(void *),
 int (*rpl_unmarshal)(void *, struct evbuffer *),
 void (*cb)(struct evrpc_status *, void *, void *, void *),
 void *cbarg)
{
 struct evrpc_request_wrapper *ctx = (struct evrpc_request_wrapper *)
     mm_malloc(sizeof(struct evrpc_request_wrapper));
 if (ctx == ((void*)0))
  return (((void*)0));

 ctx->pool = pool;
 ctx->hook_meta = ((void*)0);
 ctx->evcon = ((void*)0);
 ctx->name = mm_strdup(rpcname);
 if (ctx->name == ((void*)0)) {
  mm_free(ctx);
  return (((void*)0));
 }
 ctx->cb = cb;
 ctx->cb_arg = cbarg;
 ctx->request = request;
 ctx->reply = reply;
 ctx->request_marshal = req_marshal;
 ctx->reply_clear = rpl_clear;
 ctx->reply_unmarshal = rpl_unmarshal;

 return (ctx);
}
