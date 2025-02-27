
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int avail_in; int avail_out; int total_out; void* next_out; void* next_in; } ;


 int EIO ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int pr_err (char*,void*,...) ;
 TYPE_1__ stream ;
 int zlib_inflate (TYPE_1__*,int ) ;
 int zlib_inflateEnd (TYPE_1__*) ;
 int zlib_inflateInit (TYPE_1__*) ;
 int zlib_inflateReset (TYPE_1__*) ;

int cramfs_uncompress_block(void *dst, int dstlen, void *src, int srclen)
{
 int err;

 stream.next_in = src;
 stream.avail_in = srclen;

 stream.next_out = dst;
 stream.avail_out = dstlen;

 err = zlib_inflateReset(&stream);
 if (err != Z_OK) {
  pr_err("zlib_inflateReset error %d\n", err);
  zlib_inflateEnd(&stream);
  zlib_inflateInit(&stream);
 }

 err = zlib_inflate(&stream, Z_FINISH);
 if (err != Z_STREAM_END)
  goto err;
 return stream.total_out;

err:
 pr_err("Error %d while decompressing!\n", err);
 pr_err("%p(%d)->%p(%d)\n", src, srclen, dst, dstlen);
 return -EIO;
}
