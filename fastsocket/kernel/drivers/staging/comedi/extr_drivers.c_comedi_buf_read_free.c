
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {unsigned int buf_read_count; unsigned int buf_read_alloc_count; unsigned int buf_read_ptr; unsigned int prealloc_bufsz; } ;


 int printk (char*) ;
 int smp_mb () ;

unsigned comedi_buf_read_free(struct comedi_async *async, unsigned int nbytes)
{

 smp_mb();
 if ((int)(async->buf_read_count + nbytes -
    async->buf_read_alloc_count) > 0) {
  printk
      ("comedi: attempted to read-free more bytes than have been read-allocated.\n");
  nbytes = async->buf_read_alloc_count - async->buf_read_count;
 }
 async->buf_read_count += nbytes;
 async->buf_read_ptr += nbytes;
 async->buf_read_ptr %= async->prealloc_bufsz;
 return nbytes;
}
