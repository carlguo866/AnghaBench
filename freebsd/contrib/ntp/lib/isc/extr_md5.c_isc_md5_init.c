
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; scalar_t__* bytes; } ;
typedef TYPE_1__ isc_md5_t ;



void
isc_md5_init(isc_md5_t *ctx) {
 ctx->buf[0] = 0x67452301;
 ctx->buf[1] = 0xefcdab89;
 ctx->buf[2] = 0x98badcfe;
 ctx->buf[3] = 0x10325476;

 ctx->bytes[0] = 0;
 ctx->bytes[1] = 0;
}
