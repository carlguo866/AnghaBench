
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;

size_t
br_ecdsa_asn1_to_raw(void *sig, size_t sig_len)
{
 unsigned char *buf, *r, *s;
 size_t zlen, rlen, slen, off;
 unsigned char tmp[254];

 buf = sig;
 if (sig_len < 8) {
  return 0;
 }




 if (buf[0] != 0x30) {
  return 0;
 }







 zlen = buf[1];
 if (zlen > 0x80) {
  if (zlen != 0x81) {
   return 0;
  }
  zlen = buf[2];
  if (zlen != sig_len - 3) {
   return 0;
  }
  off = 3;
 } else {
  if (zlen != sig_len - 2) {
   return 0;
  }
  off = 2;
 }




 if (buf[off ++] != 0x02) {
  return 0;
 }
 rlen = buf[off ++];
 if (rlen >= 0x80) {
  return 0;
 }
 r = buf + off;
 off += rlen;




 if (off + 2 > sig_len) {
  return 0;
 }
 if (buf[off ++] != 0x02) {
  return 0;
 }
 slen = buf[off ++];
 if (slen >= 0x80 || slen != sig_len - off) {
  return 0;
 }
 s = buf + off;




 while (rlen > 0 && *r == 0) {
  rlen --;
  r ++;
 }
 while (slen > 0 && *s == 0) {
  slen --;
  s ++;
 }






 zlen = rlen > slen ? rlen : slen;
 sig_len = zlen << 1;
 memset(tmp, 0, sig_len);
 memcpy(tmp + zlen - rlen, r, rlen);
 memcpy(tmp + sig_len - slen, s, slen);
 memcpy(sig, tmp, sig_len);
 return sig_len;
}
