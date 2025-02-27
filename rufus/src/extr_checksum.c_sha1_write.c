
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bytecount; unsigned char* buf; } ;
typedef TYPE_1__ SUM_CONTEXT ;


 int PREFETCH64 (unsigned char const*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int sha1_transform (TYPE_1__*,unsigned char const*) ;

__attribute__((used)) static void sha1_write(SUM_CONTEXT *ctx, const unsigned char *buf, size_t len)
{
 size_t num = ctx->bytecount & 0x3f;


 ctx->bytecount += len;


 if (num) {
  unsigned char *p = ctx->buf + num;

  num = 64 - num;
  if (len < num) {
   memcpy(p, buf, len);
   return;
  }
  memcpy(p, buf, num);
  sha1_transform(ctx, ctx->buf);
  buf += num;
  len -= num;
 }


 while (len >= 64) {
  PREFETCH64(buf + 64);
  sha1_transform(ctx, buf);
  buf += 64;
  len -= 64;
 }


 memcpy(ctx->buf, buf, len);
}
