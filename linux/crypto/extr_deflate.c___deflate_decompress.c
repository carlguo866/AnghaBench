
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z_stream_s {unsigned int avail_in; unsigned int avail_out; unsigned int total_out; int * next_in; int * next_out; } ;
struct deflate_ctx {struct z_stream_s decomp_stream; } ;


 int EINVAL ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int zlib_inflate (struct z_stream_s*,int ) ;
 int zlib_inflateReset (struct z_stream_s*) ;

__attribute__((used)) static int __deflate_decompress(const u8 *src, unsigned int slen,
    u8 *dst, unsigned int *dlen, void *ctx)
{

 int ret = 0;
 struct deflate_ctx *dctx = ctx;
 struct z_stream_s *stream = &dctx->decomp_stream;

 ret = zlib_inflateReset(stream);
 if (ret != Z_OK) {
  ret = -EINVAL;
  goto out;
 }

 stream->next_in = (u8 *)src;
 stream->avail_in = slen;
 stream->next_out = (u8 *)dst;
 stream->avail_out = *dlen;

 ret = zlib_inflate(stream, Z_SYNC_FLUSH);





 if (ret == Z_OK && !stream->avail_in && stream->avail_out) {
  u8 zerostuff = 0;
  stream->next_in = &zerostuff;
  stream->avail_in = 1;
  ret = zlib_inflate(stream, Z_FINISH);
 }
 if (ret != Z_STREAM_END) {
  ret = -EINVAL;
  goto out;
 }
 ret = 0;
 *dlen = stream->total_out;
out:
 return ret;
}
