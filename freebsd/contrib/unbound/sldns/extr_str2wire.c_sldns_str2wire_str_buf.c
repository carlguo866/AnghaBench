
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_INVALID_STR ;
 int LDNS_WIREPARSE_ERR_OK ;
 int LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE ;
 int RET_ERR (int,int) ;
 scalar_t__ sldns_parse_char (scalar_t__*,char const**) ;

int sldns_str2wire_str_buf(const char* str, uint8_t* rd, size_t* len)
{
 uint8_t ch = 0;
 size_t sl = 0;
 const char* s = str;

 if(*len < 1)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;


 while(sldns_parse_char(&ch, &s)) {
  if(sl >= 255)
   return RET_ERR(LDNS_WIREPARSE_ERR_INVALID_STR, s-str);
  if(*len < sl+1)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
    s-str);
  rd[++sl] = ch;
 }
 if(!s)
  return LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE;
 rd[0] = (uint8_t)sl;
 *len = sl+1;
 return LDNS_WIREPARSE_ERR_OK;
}
