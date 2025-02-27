
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t curlen; size_t length; unsigned char* buf; } ;
typedef TYPE_1__ _picohash_sha256_ctx_t ;


 size_t PICOHASH_SHA256_BLOCK_LENGTH ;
 int _picohash_sha256_compress (TYPE_1__*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

inline void _picohash_sha256_update(_picohash_sha256_ctx_t *ctx, const void *data, size_t len)
{
    const unsigned char *in = data;
    size_t n;

    while (len > 0) {
        if (ctx->curlen == 0 && len >= PICOHASH_SHA256_BLOCK_LENGTH) {
            _picohash_sha256_compress(ctx, (unsigned char *)in);
            ctx->length += PICOHASH_SHA256_BLOCK_LENGTH * 8;
            in += PICOHASH_SHA256_BLOCK_LENGTH;
            len -= PICOHASH_SHA256_BLOCK_LENGTH;
        } else {
            n = PICOHASH_SHA256_BLOCK_LENGTH - ctx->curlen;
            if (n > len)
                n = len;
            memcpy(ctx->buf + ctx->curlen, in, (size_t)n);
            ctx->curlen += n;
            in += n;
            len -= n;
            if (ctx->curlen == 64) {
                _picohash_sha256_compress(ctx, ctx->buf);
                ctx->length += 8 * PICOHASH_SHA256_BLOCK_LENGTH;
                ctx->curlen = 0;
            }
        }
    }
}
