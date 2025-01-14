
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8 ;
struct TYPE_4__ {int rj; } ;
struct int_ctx {scalar_t__ mode; TYPE_1__ ctx; int const* iv; int is_init; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_2__ PX_Cipher ;


 scalar_t__ MODE_CBC ;
 int PXE_CIPHER_INIT ;
 int PXE_NOTBLOCKSIZE ;
 int aes_cbc_encrypt (int *,int const*,int const*,unsigned int) ;
 int aes_ecb_encrypt (int *,int const*,unsigned int) ;
 int memcpy (int const*,int const*,int) ;
 scalar_t__ rj_real_init (struct int_ctx*,int) ;

__attribute__((used)) static int
rj_encrypt(PX_Cipher *c, const uint8 *data, unsigned dlen, uint8 *res)
{
 struct int_ctx *cx = (struct int_ctx *) c->ptr;

 if (!cx->is_init)
 {
  if (rj_real_init(cx, 1))
   return PXE_CIPHER_INIT;
 }

 if (dlen == 0)
  return 0;

 if (dlen & 15)
  return PXE_NOTBLOCKSIZE;

 memcpy(res, data, dlen);

 if (cx->mode == MODE_CBC)
 {
  aes_cbc_encrypt(&cx->ctx.rj, cx->iv, res, dlen);
  memcpy(cx->iv, res + dlen - 16, 16);
 }
 else
  aes_ecb_encrypt(&cx->ctx.rj, res, dlen);

 return 0;
}
