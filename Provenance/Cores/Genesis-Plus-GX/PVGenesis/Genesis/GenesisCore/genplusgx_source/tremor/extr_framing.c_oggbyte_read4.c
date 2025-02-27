
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* ptr; int pos; } ;
typedef TYPE_1__ oggbyte_buffer ;
typedef int ogg_uint32_t ;


 int _positionB (TYPE_1__*,int) ;
 int _positionF (TYPE_1__*,int) ;

__attribute__((used)) static ogg_uint32_t oggbyte_read4(oggbyte_buffer *b,int pos){
  ogg_uint32_t ret;
  _positionB(b,pos);
  _positionF(b,pos);
  ret=b->ptr[pos-b->pos];
  _positionF(b,++pos);
  ret|=b->ptr[pos-b->pos]<<8;
  _positionF(b,++pos);
  ret|=b->ptr[pos-b->pos]<<16;
  _positionF(b,++pos);
  ret|=b->ptr[pos-b->pos]<<24;
  return ret;
}
