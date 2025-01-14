
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* time_t ;
struct fifolog_writer {unsigned int writerate; unsigned int syncrate; unsigned int compression; scalar_t__ seq; int obufsize; int ibufsize; void* lastwrite; void* lastsync; void* starttime; TYPE_1__* ff; scalar_t__ obuf; int flag; scalar_t__ ibufptr; scalar_t__ ibuf; scalar_t__ recno; int cnt; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {int avail_out; scalar_t__ next_out; } ;
struct TYPE_5__ {int recsize; TYPE_4__* zs; int recbuf; } ;


 int ALLOC (scalar_t__*,int) ;
 int CHECK_OBJ_NOTNULL (struct fifolog_writer*,int ) ;
 int FIFOLOG_FLG_RESTART ;
 int FIFOLOG_FLG_SYNC ;
 int FIFOLOG_WRITER_MAGIC ;
 unsigned int Z_BEST_COMPRESSION ;
 int Z_OK ;
 int assert (int) ;
 scalar_t__ be32dec (int ) ;
 int deflateInit (TYPE_4__*,int) ;
 char* fifolog_int_findend (TYPE_1__*,scalar_t__*) ;
 char* fifolog_int_open (TYPE_1__**,char const*,int) ;
 int fifolog_int_read (TYPE_1__*,scalar_t__) ;
 int fifolog_write_assert (struct fifolog_writer*) ;
 int memset (int ,int ,int) ;
 scalar_t__ random () ;
 int time (void**) ;

const char *
fifolog_write_open(struct fifolog_writer *f, const char *fn,
    unsigned writerate, unsigned syncrate, unsigned compression)
{
 const char *es;
 int i;
 time_t now;
 off_t o;

 CHECK_OBJ_NOTNULL(f, FIFOLOG_WRITER_MAGIC);


 if (compression > Z_BEST_COMPRESSION)
  return ("Illegal compression value");

 f->writerate = writerate;
 f->syncrate = syncrate;
 f->compression = compression;


 memset(f->cnt, 0, sizeof f->cnt);

 es = fifolog_int_open(&f->ff, fn, 1);
 if (es != ((void*)0))
  return (es);
 es = fifolog_int_findend(f->ff, &o);
 if (es != ((void*)0))
  return (es);
 i = fifolog_int_read(f->ff, o);
 if (i)
  return ("Read error, looking for seq");
 f->seq = be32dec(f->ff->recbuf);
 if (f->seq == 0) {

  f->seq = random();
 } else {
  f->recno = o + 1;
  f->seq++;
 }

 f->obufsize = f->ff->recsize;
 ALLOC(&f->obuf, f->obufsize);

 f->ibufsize = f->obufsize * 10;
 ALLOC(&f->ibuf, f->ibufsize);
 f->ibufptr = 0;

 i = deflateInit(f->ff->zs, (int)f->compression);
 assert(i == Z_OK);

 f->flag |= FIFOLOG_FLG_RESTART;
 f->flag |= FIFOLOG_FLG_SYNC;
 f->ff->zs->next_out = f->obuf + 9;
 f->ff->zs->avail_out = f->obufsize - 9;

 time(&now);
 f->starttime = now;
 f->lastsync = now;
 f->lastwrite = now;

 fifolog_write_assert(f);
 return (((void*)0));
}
