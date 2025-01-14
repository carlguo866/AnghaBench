
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {scalar_t__ direction; int dev; struct snd_dbuf* bufhard; } ;


 int CHN_DIRSTR (struct pcm_channel*) ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 scalar_t__ CHN_STARTED (struct pcm_channel*) ;
 int KASSERT (int,char*) ;
 scalar_t__ PCMDIR_PLAY ;
 unsigned int chn_getptr (struct pcm_channel*) ;
 int device_printf (int ,char*,int ,unsigned int,unsigned int,unsigned int,unsigned int,int ,int ) ;
 unsigned int min (unsigned int,int ) ;
 int snd_verbose ;
 int sndbuf_acquire (struct snd_dbuf*,int *,unsigned int) ;
 int sndbuf_dispose (struct snd_dbuf*,int *,unsigned int) ;
 unsigned int sndbuf_getalign (struct snd_dbuf*) ;
 int sndbuf_getfree (struct snd_dbuf*) ;
 unsigned int sndbuf_gethwptr (struct snd_dbuf*) ;
 int sndbuf_getready (struct snd_dbuf*) ;
 unsigned int sndbuf_getsize (struct snd_dbuf*) ;
 int sndbuf_sethwptr (struct snd_dbuf*,unsigned int) ;

__attribute__((used)) static unsigned int
chn_dmaupdate(struct pcm_channel *c)
{
 struct snd_dbuf *b = c->bufhard;
 unsigned int delta, old, hwptr, amt;

 KASSERT(sndbuf_getsize(b) > 0, ("bufsize == 0"));
 CHN_LOCKASSERT(c);

 old = sndbuf_gethwptr(b);
 hwptr = chn_getptr(c);
 delta = (sndbuf_getsize(b) + hwptr - old) % sndbuf_getsize(b);
 sndbuf_sethwptr(b, hwptr);

 if (c->direction == PCMDIR_PLAY) {
  amt = min(delta, sndbuf_getready(b));
  amt -= amt % sndbuf_getalign(b);
  if (amt > 0)
   sndbuf_dispose(b, ((void*)0), amt);
 } else {
  amt = min(delta, sndbuf_getfree(b));
  amt -= amt % sndbuf_getalign(b);
  if (amt > 0)
         sndbuf_acquire(b, ((void*)0), amt);
 }
 if (snd_verbose > 3 && CHN_STARTED(c) && delta == 0) {
  device_printf(c->dev, "WARNING: %s DMA completion "
   "too fast/slow ! hwptr=%u, old=%u "
   "delta=%u amt=%u ready=%u free=%u\n",
   CHN_DIRSTR(c), hwptr, old, delta, amt,
   sndbuf_getready(b), sndbuf_getfree(b));
 }

 return delta;
}
