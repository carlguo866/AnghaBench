
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct x509_certificate {unsigned long version; scalar_t__ const* serial_number; int serial_number_len; scalar_t__ const* subject_dn; int subject_dn_len; int subject; int issuer; int signature; } ;
struct asn1_hdr {int tag; scalar_t__* payload; int length; int class; } ;
typedef int sbuf ;


 int ASN1_CLASS_CONTEXT_SPECIFIC ;
 int ASN1_CLASS_UNIVERSAL ;
 int ASN1_TAG_INTEGER ;
 int ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 unsigned long X509_CERT_V1 ;
 unsigned long X509_CERT_V2 ;
 unsigned long X509_CERT_V3 ;
 int X509_MAX_SERIAL_NUM_LEN ;
 scalar_t__ asn1_get_next (scalar_t__ const*,int,struct asn1_hdr*) ;
 scalar_t__ const* os_malloc (int) ;
 int os_memcpy (scalar_t__ const*,scalar_t__ const*,int) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_printf (int ,char*,...) ;
 int x509_name_string (int *,char*,int) ;
 scalar_t__ x509_parse_algorithm_identifier (scalar_t__ const*,int,int *,scalar_t__ const**) ;
 scalar_t__ x509_parse_extensions (struct x509_certificate*,scalar_t__*,int) ;
 scalar_t__ x509_parse_name (scalar_t__ const*,int,int *,scalar_t__ const**) ;
 scalar_t__ x509_parse_public_key (scalar_t__ const*,int,struct x509_certificate*,scalar_t__ const**) ;
 scalar_t__ x509_parse_validity (scalar_t__ const*,int,struct x509_certificate*,scalar_t__ const**) ;

__attribute__((used)) static int x509_parse_tbs_certificate(const u8 *buf, size_t len,
          struct x509_certificate *cert,
          const u8 **next)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end;
 size_t left;
 char sbuf[128];
 unsigned long value;
 const u8 *subject_dn;


 if (asn1_get_next(buf, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: tbsCertificate did not start "
      "with a valid SEQUENCE - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 pos = hdr.payload;
 end = *next = pos + hdr.length;





 if (asn1_get_next(pos, end - pos, &hdr) < 0)
  return -1;
 pos = hdr.payload;

 if (hdr.class == ASN1_CLASS_CONTEXT_SPECIFIC) {
  if (asn1_get_next(pos, end - pos, &hdr) < 0)
   return -1;

  if (hdr.class != ASN1_CLASS_UNIVERSAL ||
      hdr.tag != ASN1_TAG_INTEGER) {
   wpa_printf(MSG_DEBUG, "X509: No INTEGER tag found for "
       "version field - found class %d tag 0x%x",
       hdr.class, hdr.tag);
   return -1;
  }
  if (hdr.length != 1) {
   wpa_printf(MSG_DEBUG, "X509: Unexpected version field "
       "length %u (expected 1)", hdr.length);
   return -1;
  }
  pos = hdr.payload;
  left = hdr.length;
  value = 0;
  while (left) {
   value <<= 8;
   value |= *pos++;
   left--;
  }

  cert->version = value;
  if (cert->version != X509_CERT_V1 &&
      cert->version != X509_CERT_V2 &&
      cert->version != X509_CERT_V3) {
   wpa_printf(MSG_DEBUG, "X509: Unsupported version %d",
       cert->version + 1);
   return -1;
  }

  if (asn1_get_next(pos, end - pos, &hdr) < 0)
   return -1;
 } else
  cert->version = X509_CERT_V1;
 wpa_printf(MSG_MSGDUMP, "X509: Version X.509v%d", cert->version + 1);


 if (hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_INTEGER ||
     hdr.length < 1 || hdr.length > X509_MAX_SERIAL_NUM_LEN) {
  wpa_printf(MSG_DEBUG, "X509: No INTEGER tag found for "
      "serialNumber; class=%d tag=0x%x length=%u",
      hdr.class, hdr.tag, hdr.length);
  return -1;
 }

 pos = hdr.payload + hdr.length;
 while (hdr.length > 0 && hdr.payload[0] == 0) {
  hdr.payload++;
  hdr.length--;
 }
 os_memcpy(cert->serial_number, hdr.payload, hdr.length);
 cert->serial_number_len = hdr.length;
 wpa_hexdump(MSG_MSGDUMP, "X509: serialNumber", cert->serial_number,
      cert->serial_number_len);


 if (x509_parse_algorithm_identifier(pos, end - pos, &cert->signature,
         &pos))
  return -1;


 if (x509_parse_name(pos, end - pos, &cert->issuer, &pos))
  return -1;
 x509_name_string(&cert->issuer, sbuf, sizeof(sbuf));
 wpa_printf(MSG_MSGDUMP, "X509: issuer %s", sbuf);


 if (x509_parse_validity(pos, end - pos, cert, &pos))
  return -1;


 subject_dn = pos;
 if (x509_parse_name(pos, end - pos, &cert->subject, &pos))
  return -1;
 cert->subject_dn = os_malloc(pos - subject_dn);
 if (!cert->subject_dn)
  return -1;
 cert->subject_dn_len = pos - subject_dn;
 os_memcpy(cert->subject_dn, subject_dn, cert->subject_dn_len);
 x509_name_string(&cert->subject, sbuf, sizeof(sbuf));
 wpa_printf(MSG_MSGDUMP, "X509: subject %s", sbuf);


 if (x509_parse_public_key(pos, end - pos, cert, &pos))
  return -1;

 if (pos == end)
  return 0;

 if (cert->version == X509_CERT_V1)
  return 0;

 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
  wpa_printf(MSG_DEBUG, "X509: Expected Context-Specific"
      " tag to parse optional tbsCertificate "
      "field(s); parsed class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }

 if (hdr.tag == 1) {

  wpa_printf(MSG_DEBUG, "X509: issuerUniqueID");


  pos = hdr.payload + hdr.length;
  if (pos == end)
   return 0;

  if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
   wpa_printf(MSG_DEBUG, "X509: Expected Context-Specific"
       " tag to parse optional tbsCertificate "
       "field(s); parsed class %d tag 0x%x",
       hdr.class, hdr.tag);
   return -1;
  }
 }

 if (hdr.tag == 2) {

  wpa_printf(MSG_DEBUG, "X509: subjectUniqueID");


  pos = hdr.payload + hdr.length;
  if (pos == end)
   return 0;

  if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
   wpa_printf(MSG_DEBUG, "X509: Expected Context-Specific"
       " tag to parse optional tbsCertificate "
       "field(s); parsed class %d tag 0x%x",
       hdr.class, hdr.tag);
   return -1;
  }
 }

 if (hdr.tag != 3) {
  wpa_printf(MSG_DEBUG, "X509: Ignored unexpected "
      "Context-Specific tag %d in optional "
      "tbsCertificate fields", hdr.tag);
  return 0;
 }



 if (cert->version != X509_CERT_V3) {
  wpa_printf(MSG_DEBUG, "X509: X.509%d certificate and "
      "Extensions data which are only allowed for "
      "version 3", cert->version + 1);
  return -1;
 }

 if (x509_parse_extensions(cert, hdr.payload, hdr.length) < 0)
  return -1;

 pos = hdr.payload + hdr.length;
 if (pos < end) {
  wpa_hexdump(MSG_DEBUG,
       "X509: Ignored extra tbsCertificate data",
       pos, end - pos);
 }

 return 0;
}
