
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct st_h2o_qpack_flatten_context_t {TYPE_2__* headers_buf; int pool; } ;
struct TYPE_6__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;
struct TYPE_7__ {int size; int* entries; } ;


 int H2O_HPACK_ENCODE_INT_MAX_LENGTH ;
 int flatten_string (TYPE_2__*,int ,int,int,int) ;
 int h2o_vector_reserve (int ,TYPE_2__*,int) ;

__attribute__((used)) static void flatten_without_nameref(struct st_h2o_qpack_flatten_context_t *ctx, const h2o_iovec_t *name, h2o_iovec_t value,
                                    int dont_compress)
{
    h2o_vector_reserve(ctx->pool, ctx->headers_buf,
                       ctx->headers_buf->size + H2O_HPACK_ENCODE_INT_MAX_LENGTH * 2 + name->len + value.len);
    ctx->headers_buf->entries[ctx->headers_buf->size] = 0x20 | (dont_compress ? 0x10 : 0);
    flatten_string(ctx->headers_buf, name->base, name->len, 3, 0);
    flatten_string(ctx->headers_buf, value.base, value.len, 7, dont_compress);
}
