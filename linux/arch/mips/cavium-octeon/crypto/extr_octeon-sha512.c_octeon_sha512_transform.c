
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int octeon_sha512_start (int const) ;
 int write_octeon_64bit_block_sha512 (int const,int) ;

__attribute__((used)) static void octeon_sha512_transform(const void *_block)
{
 const u64 *block = _block;

 write_octeon_64bit_block_sha512(block[0], 0);
 write_octeon_64bit_block_sha512(block[1], 1);
 write_octeon_64bit_block_sha512(block[2], 2);
 write_octeon_64bit_block_sha512(block[3], 3);
 write_octeon_64bit_block_sha512(block[4], 4);
 write_octeon_64bit_block_sha512(block[5], 5);
 write_octeon_64bit_block_sha512(block[6], 6);
 write_octeon_64bit_block_sha512(block[7], 7);
 write_octeon_64bit_block_sha512(block[8], 8);
 write_octeon_64bit_block_sha512(block[9], 9);
 write_octeon_64bit_block_sha512(block[10], 10);
 write_octeon_64bit_block_sha512(block[11], 11);
 write_octeon_64bit_block_sha512(block[12], 12);
 write_octeon_64bit_block_sha512(block[13], 13);
 write_octeon_64bit_block_sha512(block[14], 14);
 octeon_sha512_start(block[15]);
}
