
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; char* buf; void** ptr; scalar_t__ pos; scalar_t__ gen; } ;
struct dcons_softc {TYPE_1__ i; TYPE_1__ o; int brk_state; } ;
struct dcons_buf {void** iptr; void** optr; void** ioffset; void** ooffset; void** isize; void** osize; } ;


 void* DCONS_MAKE_PTR (TYPE_1__*) ;
 int STATE0 ;
 void* htonl (int) ;

__attribute__((used)) static int
dcons_init_port(int port, int offset, int size, struct dcons_buf *buf,
    struct dcons_softc *sc)
{
 int osize;
 struct dcons_softc *dc;

 dc = &sc[port];

 osize = size * 3 / 4;

 dc->o.size = osize;
 dc->i.size = size - osize;
 dc->o.buf = (char *)buf + offset;
 dc->i.buf = dc->o.buf + osize;
 dc->o.gen = dc->i.gen = 0;
 dc->o.pos = dc->i.pos = 0;
 dc->o.ptr = &buf->optr[port];
 dc->i.ptr = &buf->iptr[port];
 dc->brk_state = STATE0;
 buf->osize[port] = htonl(osize);
 buf->isize[port] = htonl(size - osize);
 buf->ooffset[port] = htonl(offset);
 buf->ioffset[port] = htonl(offset + osize);
 buf->optr[port] = DCONS_MAKE_PTR(&dc->o);
 buf->iptr[port] = DCONS_MAKE_PTR(&dc->i);

 return(0);
}
