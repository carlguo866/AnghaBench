
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct synth_midi {struct snd_midi* m; } ;
struct snd_midi {int flags; int wchan; int lock; int qlock; int cookie; int outq; int busy; } ;
typedef int intmax_t ;


 int EINTR ;
 int ENXIO ;
 int MIDIQ_AVAIL (int ) ;
 int MIDIQ_ENQ (int ,int*,int) ;
 scalar_t__ MIDIQ_LEN (int ) ;
 int MIDI_DEBUG (int,int ) ;
 size_t MIDI_WSIZE ;
 int MIN (int,size_t) ;
 int MPU_CALLBACK (struct snd_midi*,int ,int) ;
 int M_TX ;
 int M_TXEN ;
 int PCATCH ;
 int PDROP ;
 scalar_t__ midi_dumpraw ;
 int msleep (int*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;

int
midisynth_writeraw(void *n, uint8_t *buf, size_t len)
{
 struct snd_midi *m = ((struct synth_midi *)n)->m;
 int retval;
 int used;
 int i;

 MIDI_DEBUG(4, printf("midisynth_writeraw\n"));

 retval = 0;

 if (m == ((void*)0))
  return ENXIO;

 mtx_lock(&m->lock);
 mtx_lock(&m->qlock);

 if (!(m->flags & M_TX))
  goto err1;

 if (midi_dumpraw)
  printf("midi dump: ");

 while (len > 0) {
  while (MIDIQ_AVAIL(m->outq) == 0) {
   if (!(m->flags & M_TXEN)) {
    m->flags |= M_TXEN;
    MPU_CALLBACK(m, m->cookie, m->flags);
   }
   mtx_unlock(&m->lock);
   m->wchan = 1;
   MIDI_DEBUG(3, printf("midisynth_writeraw msleep\n"));
   retval = msleep(&m->wchan, &m->qlock,
       PCATCH | PDROP, "midi TX", 0);




   if (retval == EINTR)
    goto err0;

   if (retval)
    goto err0;
   mtx_lock(&m->lock);
   mtx_lock(&m->qlock);
   m->wchan = 0;
   if (!m->busy)
    goto err1;
  }





  used = MIN(MIDIQ_AVAIL(m->outq), len);
  used = MIN(used, MIDI_WSIZE);
  MIDI_DEBUG(5,
      printf("midi_synth: resid %zu len %jd avail %jd\n",
      len, (intmax_t)MIDIQ_LEN(m->outq),
      (intmax_t)MIDIQ_AVAIL(m->outq)));

  if (midi_dumpraw)
   for (i = 0; i < used; i++)
    printf("%x ", buf[i]);

  MIDIQ_ENQ(m->outq, buf, used);
  len -= used;




  if (!(m->flags & M_TXEN)) {
   m->flags |= M_TXEN;
   MPU_CALLBACK(m, m->cookie, m->flags);
  }
 }



 if (midi_dumpraw)
  printf("\n");

 retval = 0;
err1: mtx_unlock(&m->qlock);
 mtx_unlock(&m->lock);
err0: return retval;
}
