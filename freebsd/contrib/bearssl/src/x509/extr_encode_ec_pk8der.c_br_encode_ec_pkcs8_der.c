
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int br_ec_public_key ;
struct TYPE_4__ {int curve; } ;
typedef TYPE_1__ br_ec_private_key ;


 size_t br_asn1_encode_length (unsigned char*,size_t) ;
 size_t br_encode_ec_raw_der_inner (unsigned char*,TYPE_1__ const*,int const*,int ) ;
 unsigned char* br_get_curve_OID (int ) ;
 int len_of_len (size_t) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

size_t
br_encode_ec_pkcs8_der(void *dest,
 const br_ec_private_key *sk, const br_ec_public_key *pk)
{
 static const unsigned char OID_ECPUBKEY[] = {
  0x06, 0x07, 0x2a, 0x86, 0x48, 0xce, 0x3d, 0x02, 0x01
 };

 size_t len_version, len_privateKeyAlgorithm, len_privateKeyValue;
 size_t len_privateKey, len_seq;
 const unsigned char *oid;

 oid = br_get_curve_OID(sk->curve);
 if (oid == ((void*)0)) {
  return 0;
 }
 len_version = 3;
 len_privateKeyAlgorithm = 2 + sizeof OID_ECPUBKEY + 2 + oid[0];
 len_privateKeyValue = br_encode_ec_raw_der_inner(((void*)0), sk, pk, 0);
 len_privateKey = 1 + len_of_len(len_privateKeyValue)
  + len_privateKeyValue;
 len_seq = len_version + len_privateKeyAlgorithm + len_privateKey;

 if (dest == ((void*)0)) {
  return 1 + len_of_len(len_seq) + len_seq;
 } else {
  unsigned char *buf;
  size_t lenlen;

  buf = dest;
  *buf ++ = 0x30;
  lenlen = br_asn1_encode_length(buf, len_seq);
  buf += lenlen;


  *buf ++ = 0x02;
  *buf ++ = 0x01;
  *buf ++ = 0x00;


  *buf ++ = 0x30;
  *buf ++ = (sizeof OID_ECPUBKEY) + 2 + oid[0];
  memcpy(buf, OID_ECPUBKEY, sizeof OID_ECPUBKEY);
  buf += sizeof OID_ECPUBKEY;
  *buf ++ = 0x06;
  memcpy(buf, oid, 1 + oid[0]);
  buf += 1 + oid[0];


  *buf ++ = 0x04;
  buf += br_asn1_encode_length(buf, len_privateKeyValue);
  br_encode_ec_raw_der_inner(buf, sk, pk, 0);

  return 1 + lenlen + len_seq;
 }
}
