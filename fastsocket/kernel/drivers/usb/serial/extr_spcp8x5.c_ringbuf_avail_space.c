
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf {int buf_size; int buf_get; int buf_put; } ;



__attribute__((used)) static inline unsigned int ringbuf_avail_space(struct ringbuf *pb)
{
 if (pb == ((void*)0))
  return 0;
 return (pb->buf_size + pb->buf_get - pb->buf_put - 1) % pb->buf_size;
}
