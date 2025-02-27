
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct phr_header {int name_len; int value_len; scalar_t__ value; scalar_t__ name; } ;
typedef int ssize_t ;
struct TYPE_22__ {scalar_t__ is_init_header_special; } ;
struct TYPE_24__ {TYPE_1__ flags; } ;
typedef TYPE_3__ h2o_token_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_25__ {char* base; int len; } ;
typedef TYPE_4__ h2o_iovec_t ;
struct TYPE_26__ {int size; TYPE_2__* entries; } ;
typedef TYPE_5__ h2o_headers_t ;
struct TYPE_23__ {TYPE_4__ value; } ;


 TYPE_3__ const* H2O_TOKEN_CONNECTION ;
 TYPE_3__ const* H2O_TOKEN_CONTENT_LENGTH ;
 TYPE_3__ const* H2O_TOKEN_EXPECT ;
 TYPE_3__ const* H2O_TOKEN_HOST ;
 TYPE_3__ const* H2O_TOKEN_TRANSFER_ENCODING ;
 TYPE_3__ const* H2O_TOKEN_UPGRADE ;
 int assert (int) ;
 int h2o_add_header (int *,TYPE_5__*,TYPE_3__ const*,char*,scalar_t__,int ) ;
 int h2o_add_header_by_str (int *,TYPE_5__*,scalar_t__,int,int ,char*,scalar_t__,int ) ;
 TYPE_3__* h2o_lookup_token (scalar_t__,int) ;
 int h2o_strtolower (char*,int) ;
 int h2o_vector_reserve (int *,TYPE_5__*,size_t) ;
 int memcpy (char*,scalar_t__,int) ;

__attribute__((used)) static int init_headers(h2o_mem_pool_t *pool, h2o_headers_t *headers, const struct phr_header *src, size_t len,
                        h2o_iovec_t *connection, h2o_iovec_t *host, h2o_iovec_t *upgrade, h2o_iovec_t *expect,
                        ssize_t *entity_header_index)
{
    *entity_header_index = -1;

    assert(headers->size == 0);


    if (len != 0) {
        size_t i;
        h2o_vector_reserve(pool, headers, len);
        for (i = 0; i != len; ++i) {
            const h2o_token_t *name_token;
            char orig_case[src[i].name_len];

            if (src[i].name_len == 0)
                return -1;

            memcpy(orig_case, src[i].name, src[i].name_len);

            h2o_strtolower((char *)src[i].name, src[i].name_len);
            if ((name_token = h2o_lookup_token(src[i].name, src[i].name_len)) != ((void*)0)) {
                if (name_token->flags.is_init_header_special) {
                    if (name_token == H2O_TOKEN_HOST) {
                        host->base = (char *)src[i].value;
                        host->len = src[i].value_len;
                    } else if (name_token == H2O_TOKEN_CONTENT_LENGTH) {
                        if (*entity_header_index == -1)
                            *entity_header_index = i;
                    } else if (name_token == H2O_TOKEN_TRANSFER_ENCODING) {
                        *entity_header_index = i;
                    } else if (name_token == H2O_TOKEN_EXPECT) {
                        expect->base = (char *)src[i].value;
                        expect->len = src[i].value_len;
                    } else if (name_token == H2O_TOKEN_UPGRADE) {
                        upgrade->base = (char *)src[i].value;
                        upgrade->len = src[i].value_len;
                    } else {
                        assert(!"logic flaw");
                    }
                } else {
                    h2o_add_header(pool, headers, name_token, orig_case, src[i].value, src[i].value_len);
                    if (name_token == H2O_TOKEN_CONNECTION)
                        *connection = headers->entries[headers->size - 1].value;
                }
            } else {
                h2o_add_header_by_str(pool, headers, src[i].name, src[i].name_len, 0, orig_case, src[i].value, src[i].value_len);
            }
        }
    }

    return 0;
}
