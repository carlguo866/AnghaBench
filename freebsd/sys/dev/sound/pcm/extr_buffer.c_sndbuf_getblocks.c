
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct snd_dbuf {int total; int blksz; } ;


 int SNDBUF_LOCKASSERT (struct snd_dbuf*) ;

u_int64_t
sndbuf_getblocks(struct snd_dbuf *b)
{
 SNDBUF_LOCKASSERT(b);

 return b->total / b->blksz;
}
