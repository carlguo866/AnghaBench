
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SHA512_MAC_LEN ;
 int forced_memzero (int*,int) ;
 scalar_t__ hmac_sha512_vector (int const*,size_t,int,unsigned char const**,size_t*,int*) ;
 int os_memcpy (int*,int*,size_t) ;
 int os_memset (int*,int ,size_t) ;
 int os_strlen (char const*) ;

int hmac_sha512_kdf(const u8 *secret, size_t secret_len,
      const char *label, const u8 *seed, size_t seed_len,
      u8 *out, size_t outlen)
{
 u8 T[SHA512_MAC_LEN];
 u8 iter = 1;
 const unsigned char *addr[4];
 size_t len[4];
 size_t pos, clen;

 addr[0] = T;
 len[0] = SHA512_MAC_LEN;
 if (label) {
  addr[1] = (const unsigned char *) label;
  len[1] = os_strlen(label) + 1;
 } else {
  addr[1] = (const u8 *) "";
  len[1] = 0;
 }
 addr[2] = seed;
 len[2] = seed_len;
 addr[3] = &iter;
 len[3] = 1;

 if (hmac_sha512_vector(secret, secret_len, 3, &addr[1], &len[1], T) < 0)
  return -1;

 pos = 0;
 for (;;) {
  clen = outlen - pos;
  if (clen > SHA512_MAC_LEN)
   clen = SHA512_MAC_LEN;
  os_memcpy(out + pos, T, clen);
  pos += clen;

  if (pos == outlen)
   break;

  if (iter == 255) {
   os_memset(out, 0, outlen);
   forced_memzero(T, SHA512_MAC_LEN);
   return -1;
  }
  iter++;

  if (hmac_sha512_vector(secret, secret_len, 4, addr, len, T) < 0)
  {
   os_memset(out, 0, outlen);
   forced_memzero(T, SHA512_MAC_LEN);
   return -1;
  }
 }

 forced_memzero(T, SHA512_MAC_LEN);
 return 0;
}
