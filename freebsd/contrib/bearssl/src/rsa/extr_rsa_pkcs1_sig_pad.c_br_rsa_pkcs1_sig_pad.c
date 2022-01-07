
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int,size_t) ;

uint32_t
br_rsa_pkcs1_sig_pad(const unsigned char *hash_oid,
 const unsigned char *hash, size_t hash_len,
 uint32_t n_bitlen, unsigned char *x)
{
 size_t u, x3, xlen;
 xlen = (n_bitlen + 7) >> 3;

 if (hash_oid == ((void*)0)) {
  if (xlen < hash_len + 11) {
   return 0;
  }
  x[0] = 0x00;
  x[1] = 0x01;
  u = xlen - hash_len;
  memset(x + 2, 0xFF, u - 3);
  x[u - 1] = 0x00;
 } else {
  x3 = hash_oid[0];





  if (xlen < (x3 + hash_len + 21)) {
   return 0;
  }
  x[0] = 0x00;
  x[1] = 0x01;
  u = xlen - x3 - hash_len - 11;
  memset(x + 2, 0xFF, u - 2);
  x[u] = 0x00;
  x[u + 1] = 0x30;
  x[u + 2] = x3 + hash_len + 8;
  x[u + 3] = 0x30;
  x[u + 4] = x3 + 4;
  x[u + 5] = 0x06;
  memcpy(x + u + 6, hash_oid, x3 + 1);
  u += x3 + 7;
  x[u ++] = 0x05;
  x[u ++] = 0x00;
  x[u ++] = 0x04;
  x[u ++] = hash_len;
 }
 memcpy(x + u, hash, hash_len);
 return 1;
}
