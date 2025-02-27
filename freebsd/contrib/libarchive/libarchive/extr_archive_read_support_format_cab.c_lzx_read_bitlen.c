
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lzx_stream {struct lzx_dec* ds; } ;
struct TYPE_2__ {int max_bits; int* bitlen; } ;
struct lzx_br {int dummy; } ;
struct lzx_dec {int loop; TYPE_1__ pt; struct lzx_br br; } ;
struct huffman {int* freq; int len_size; int* bitlen; } ;


 int lzx_br_bits (struct lzx_br*,int) ;
 int lzx_br_consume (struct lzx_br*,int) ;
 int lzx_br_read_ahead (struct lzx_stream*,struct lzx_br*,int) ;
 int lzx_decode_huffman (TYPE_1__*,unsigned int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
lzx_read_bitlen(struct lzx_stream *strm, struct huffman *d, int end)
{
 struct lzx_dec *ds = strm->ds;
 struct lzx_br *br = &(ds->br);
 int c, i, j, ret, same;
 unsigned rbits;

 i = ds->loop;
 if (i == 0)
  memset(d->freq, 0, sizeof(d->freq));
 ret = 0;
 if (end < 0)
  end = d->len_size;
 while (i < end) {
  ds->loop = i;
  if (!lzx_br_read_ahead(strm, br, ds->pt.max_bits))
   goto getdata;
  rbits = lzx_br_bits(br, ds->pt.max_bits);
  c = lzx_decode_huffman(&(ds->pt), rbits);
  switch (c) {
  case 17:
   if (!lzx_br_read_ahead(strm, br, ds->pt.bitlen[c]+4))
    goto getdata;
   lzx_br_consume(br, ds->pt.bitlen[c]);
   same = lzx_br_bits(br, 4) + 4;
   if (i + same > end)
    return (-1);
   lzx_br_consume(br, 4);
   for (j = 0; j < same; j++)
    d->bitlen[i++] = 0;
   break;
  case 18:
   if (!lzx_br_read_ahead(strm, br, ds->pt.bitlen[c]+5))
    goto getdata;
   lzx_br_consume(br, ds->pt.bitlen[c]);
   same = lzx_br_bits(br, 5) + 20;
   if (i + same > end)
    return (-1);
   lzx_br_consume(br, 5);
   memset(d->bitlen + i, 0, same);
   i += same;
   break;
  case 19:
   if (!lzx_br_read_ahead(strm, br,
       ds->pt.bitlen[c]+1+ds->pt.max_bits))
    goto getdata;
   lzx_br_consume(br, ds->pt.bitlen[c]);
   same = lzx_br_bits(br, 1) + 4;
   if (i + same > end)
    return (-1);
   lzx_br_consume(br, 1);
   rbits = lzx_br_bits(br, ds->pt.max_bits);
   c = lzx_decode_huffman(&(ds->pt), rbits);
   lzx_br_consume(br, ds->pt.bitlen[c]);
   c = (d->bitlen[i] - c + 17) % 17;
   if (c < 0)
    return (-1);
   for (j = 0; j < same; j++)
    d->bitlen[i++] = c;
   d->freq[c] += same;
   break;
  default:
   lzx_br_consume(br, ds->pt.bitlen[c]);
   c = (d->bitlen[i] - c + 17) % 17;
   if (c < 0)
    return (-1);
   d->freq[c]++;
   d->bitlen[i++] = c;
   break;
  }
 }
 ret = 1;
getdata:
 ds->loop = i;
 return (ret);
}
