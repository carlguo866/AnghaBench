
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int const BITS_PER_BYTE ;
 int BUILDIN_CLZ (int) ;
 int BUILDIN_CTZ (int) ;
 int const FLOAT_BYTES ;
 int INT8MASK (int) ;
 int encodeFloatValue (int,int,char* const,int*) ;
 int memcpy (char* const,char const* const,int) ;

int tsCompressFloatImp(const char *const input, const int nelements, char *const output) {
  float *istream = (float *)input;
  int byte_limit = nelements * FLOAT_BYTES + 1;
  int opos = 1;

  uint32_t prev_value = 0;
  uint32_t prev_diff = 0;
  uint8_t prev_flag = 0;


  for (int i = 0; i < nelements; i++) {
    union {
      float real;
      uint32_t bits;
    } curr;

    curr.real = istream[i];


    uint32_t predicted = prev_value;
    uint32_t diff = curr.bits ^ predicted;

    int leading_zeros = FLOAT_BYTES * BITS_PER_BYTE;
    int trailing_zeros = leading_zeros;

    if (diff) {
      trailing_zeros = BUILDIN_CTZ(diff);
      leading_zeros = BUILDIN_CLZ(diff);
    }

    uint8_t nbytes = 0;
    uint8_t flag;

    if (trailing_zeros > leading_zeros) {
      nbytes = FLOAT_BYTES - trailing_zeros / BITS_PER_BYTE;

      if (nbytes > 0) nbytes--;
      flag = ((uint8_t)1 << 3) | nbytes;
    } else {
      nbytes = FLOAT_BYTES - leading_zeros / BITS_PER_BYTE;
      if (nbytes > 0) nbytes--;
      flag = nbytes;
    }

    if (i % 2 == 0) {
      prev_diff = diff;
      prev_flag = flag;
    } else {
      int nbyte1 = (prev_flag & INT8MASK(3)) + 1;
      int nbyte2 = (flag & INT8MASK(3)) + 1;
      if (opos + 1 + nbyte1 + nbyte2 <= byte_limit) {
        uint8_t flags = prev_flag | (flag << 4);
        output[opos++] = flags;
        encodeFloatValue(prev_diff, prev_flag, output, &opos);
        encodeFloatValue(diff, flag, output, &opos);
      } else {
        output[0] = 1;
        memcpy(output + 1, input, byte_limit - 1);
        return byte_limit;
      }
    }
    prev_value = curr.bits;
  }

  if (nelements % 2) {
    int nbyte1 = (prev_flag & INT8MASK(3)) + 1;
    int nbyte2 = 1;
    if (opos + 1 + nbyte1 + nbyte2 <= byte_limit) {
      uint8_t flags = prev_flag;
      output[opos++] = flags;
      encodeFloatValue(prev_diff, prev_flag, output, &opos);
      encodeFloatValue(0, 0, output, &opos);
    } else {
      output[0] = 1;
      memcpy(output + 1, input, byte_limit - 1);
      return byte_limit;
    }
  }

  output[0] = 0;
  return opos;
}
