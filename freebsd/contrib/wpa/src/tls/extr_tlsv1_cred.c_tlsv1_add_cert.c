
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct x509_certificate {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 unsigned char* base64_decode (unsigned char const*,int,size_t*) ;
 int os_free (unsigned char*) ;
 int os_strlen (int ) ;
 int pem_cert_begin ;
 int pem_cert_end ;
 unsigned char* search_tag (int ,unsigned char const*,int) ;
 scalar_t__ tlsv1_add_cert_der (struct x509_certificate**,unsigned char const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tlsv1_add_cert(struct x509_certificate **chain,
     const u8 *buf, size_t len)
{
 const u8 *pos, *end;
 unsigned char *der;
 size_t der_len;

 pos = search_tag(pem_cert_begin, buf, len);
 if (!pos) {
  wpa_printf(MSG_DEBUG, "TLSv1: No PEM certificate tag found - "
      "assume DER format");
  return tlsv1_add_cert_der(chain, buf, len);
 }

 wpa_printf(MSG_DEBUG, "TLSv1: Converting PEM format certificate into "
     "DER format");

 while (pos) {
  pos += os_strlen(pem_cert_begin);
  end = search_tag(pem_cert_end, pos, buf + len - pos);
  if (end == ((void*)0)) {
   wpa_printf(MSG_INFO, "TLSv1: Could not find PEM "
       "certificate end tag (%s)", pem_cert_end);
   return -1;
  }

  der = base64_decode(pos, end - pos, &der_len);
  if (der == ((void*)0)) {
   wpa_printf(MSG_INFO, "TLSv1: Could not decode PEM "
       "certificate");
   return -1;
  }

  if (tlsv1_add_cert_der(chain, der, der_len) < 0) {
   wpa_printf(MSG_INFO, "TLSv1: Failed to parse PEM "
       "certificate after DER conversion");
   os_free(der);
   return -1;
  }

  os_free(der);

  end += os_strlen(pem_cert_end);
  pos = search_tag(pem_cert_begin, end, buf + len - end);
 }

 return 0;
}
