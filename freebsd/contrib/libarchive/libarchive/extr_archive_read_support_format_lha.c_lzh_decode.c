
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzh_stream {int avail_in; int total_in; struct lzh_dec* ds; } ;
struct lzh_dec {int error; scalar_t__ state; } ;


 scalar_t__ ST_GET_LITERAL ;
 int lzh_decode_blocks (struct lzh_stream*,int) ;
 int lzh_read_blocks (struct lzh_stream*,int) ;

__attribute__((used)) static int
lzh_decode(struct lzh_stream *strm, int last)
{
 struct lzh_dec *ds = strm->ds;
 int avail_in;
 int r;

 if (ds->error)
  return (ds->error);

 avail_in = strm->avail_in;
 do {
  if (ds->state < ST_GET_LITERAL)
   r = lzh_read_blocks(strm, last);
  else
   r = lzh_decode_blocks(strm, last);
 } while (r == 100);
 strm->total_in += avail_in - strm->avail_in;
 return (r);
}
