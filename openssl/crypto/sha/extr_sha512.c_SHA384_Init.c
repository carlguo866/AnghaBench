
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_len; scalar_t__ num; scalar_t__ Nh; scalar_t__ Nl; void** h; } ;
typedef TYPE_1__ SHA512_CTX ;


 int SHA384_DIGEST_LENGTH ;
 void* U64 (int) ;

int SHA384_Init(SHA512_CTX *c)
{
    c->h[0] = U64(0xcbbb9d5dc1059ed8);
    c->h[1] = U64(0x629a292a367cd507);
    c->h[2] = U64(0x9159015a3070dd17);
    c->h[3] = U64(0x152fecd8f70e5939);
    c->h[4] = U64(0x67332667ffc00b31);
    c->h[5] = U64(0x8eb44a8768581511);
    c->h[6] = U64(0xdb0c2e0d64f98fa7);
    c->h[7] = U64(0x47b5481dbefa4fa4);

    c->Nl = 0;
    c->Nh = 0;
    c->num = 0;
    c->md_len = SHA384_DIGEST_LENGTH;
    return 1;
}
