
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t LDNS_MAX_DOMAINLEN ;
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW ;
 int LDNS_WIREPARSE_ERR_OK ;
 int RET_ERR (int ,size_t) ;
 int memmove (int *,int *,size_t) ;
 int sldns_str2wire_dname_buf_rel (char const*,int *,size_t*,int*) ;

int sldns_str2wire_dname_buf_origin(const char* str, uint8_t* buf, size_t* len,
 uint8_t* origin, size_t origin_len)
{
 size_t dlen = *len;
 int rel = 0;
 int s = sldns_str2wire_dname_buf_rel(str, buf, &dlen, &rel);
 if(s) return s;

 if(rel && origin && dlen > 0) {
  if(dlen + origin_len - 1 > LDNS_MAX_DOMAINLEN)
   return RET_ERR(LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW,
    LDNS_MAX_DOMAINLEN);
  if(dlen + origin_len - 1 > *len)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
    *len);
  memmove(buf+dlen-1, origin, origin_len);
  *len = dlen + origin_len - 1;
 } else
  *len = dlen;
 return LDNS_WIREPARSE_ERR_OK;
}
