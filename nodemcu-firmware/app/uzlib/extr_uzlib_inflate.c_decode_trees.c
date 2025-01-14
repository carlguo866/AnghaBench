
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
typedef int uchar ;
typedef int UZLIB_TREE ;
struct TYPE_5__ {size_t* clcidx; } ;
typedef TYPE_1__ UZLIB_DATA ;


 int UZLIB_DATA_ERROR ;
 int UZLIB_OK ;
 int build_tree (int *,int*,int) ;
 int decode_symbol (TYPE_1__*,int *) ;
 int read_bits (TYPE_1__*,int,int) ;

__attribute__((used)) static int decode_trees (UZLIB_DATA *d, UZLIB_TREE *lt, UZLIB_TREE *dt) {
  uchar lengths[288+32];
  uint hlit, hdist, hclen, hlimit;
  uint i, num, length;


  hlit = read_bits(d, 5, 257);


  hdist = read_bits(d, 5, 1);


  hclen = read_bits(d, 4, 4);

  for (i = 0; i < 19; ++i) lengths[i] = 0;


  for (i = 0; i < hclen; ++i) {

    uint clen = read_bits(d, 3, 0);
    lengths[d->clcidx[i]] = clen;
  }


  build_tree(lt, lengths, 19);


  hlimit = hlit + hdist;
  for (num = 0; num < hlimit; ) {
    int sym = decode_symbol(d, lt);
    uchar fill_value = 0;
    int lbits, lbase = 3;


    if (sym < 0)
      return sym;

    switch (sym) {
    case 16:

      fill_value = lengths[num - 1];
      lbits = 2;
      break;
    case 17:

      lbits = 3;
      break;
    case 18:

      lbits = 7;
      lbase = 11;
      break;
    default:

      lengths[num++] = sym;

      continue;
    }


    length = read_bits(d, lbits, lbase);
    if (num + length > hlimit)
      return UZLIB_DATA_ERROR;

    for (; length; --length)
      lengths[num++] = fill_value;
  }


  build_tree(lt, lengths, hlit);
  build_tree(dt, lengths + hlit, hdist);

  return UZLIB_OK;
}
