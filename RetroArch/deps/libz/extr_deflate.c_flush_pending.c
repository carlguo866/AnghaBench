
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_6__ {unsigned int pending; unsigned int pending_out; unsigned int pending_buf; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_5__ {unsigned int avail_out; unsigned int next_out; unsigned int total_out; scalar_t__ state; } ;


 int _tr_flush_bits (TYPE_2__*) ;
 int zmemcpy (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void flush_pending(z_streamp strm)
{
   unsigned len;
   deflate_state *s = (deflate_state*)strm->state;

   _tr_flush_bits(s);
   len = s->pending;
   if (len > strm->avail_out) len = strm->avail_out;
   if (len == 0) return;

   zmemcpy(strm->next_out, s->pending_out, len);
   strm->next_out += len;
   s->pending_out += len;
   strm->total_out += len;
   strm->avail_out -= len;
   s->pending -= len;
   if (s->pending == 0) {
      s->pending_out = s->pending_buf;
   }
}
