
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int const DOUBLE_BYTES ;
 int INT8MASK (int) ;
 int decodeDoubleValue (char const* const,int*,int) ;
 int memcpy (char* const,char const* const,int const) ;

int tsDecompressDoubleImp(const char *const input, const int nelements, char *const output) {

  double *ostream = (double *)output;

  if (input[0] == 1) {
    memcpy(output, input + 1, nelements * DOUBLE_BYTES);
    return nelements * DOUBLE_BYTES;
  }

  uint8_t flags = 0;
  int ipos = 1;
  int opos = 0;
  uint64_t prev_value = 0;

  for (int i = 0; i < nelements; i++) {
    if (i % 2 == 0) {
      flags = input[ipos++];
    }

    uint8_t flag = flags & INT8MASK(4);
    flags >>= 4;

    uint64_t diff = decodeDoubleValue(input, &ipos, flag);
    union {
      uint64_t bits;
      double real;
    } curr;

    uint64_t predicted = prev_value;
    curr.bits = predicted ^ diff;
    prev_value = curr.bits;

    ostream[opos++] = curr.real;
  }

  return nelements * DOUBLE_BYTES;
}
