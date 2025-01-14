
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {size_t last_bytes_bits_; int last_bytes_; } ;
typedef TYPE_1__ BrotliEncoderState ;


 int BrotliWriteBits (int,size_t const,size_t*,scalar_t__*) ;
 int Log2FloorNonZero (int) ;

__attribute__((used)) static size_t WriteMetadataHeader(
    BrotliEncoderState* s, const size_t block_size, uint8_t* header) {
  size_t storage_ix;
  storage_ix = s->last_bytes_bits_;
  header[0] = (uint8_t)s->last_bytes_;
  header[1] = (uint8_t)(s->last_bytes_ >> 8);
  s->last_bytes_ = 0;
  s->last_bytes_bits_ = 0;

  BrotliWriteBits(1, 0, &storage_ix, header);
  BrotliWriteBits(2, 3, &storage_ix, header);
  BrotliWriteBits(1, 0, &storage_ix, header);
  if (block_size == 0) {
    BrotliWriteBits(2, 0, &storage_ix, header);
  } else {
    uint32_t nbits = (block_size == 1) ? 0 :
        (Log2FloorNonZero((uint32_t)block_size - 1) + 1);
    uint32_t nbytes = (nbits + 7) / 8;
    BrotliWriteBits(2, nbytes, &storage_ix, header);
    BrotliWriteBits(8 * nbytes, block_size - 1, &storage_ix, header);
  }
  return (storage_ix + 7u) >> 3;
}
