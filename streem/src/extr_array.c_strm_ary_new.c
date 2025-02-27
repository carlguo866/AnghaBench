
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_array {int* ptr; int len; int headers; int * ns; } ;
typedef int strm_value ;
typedef int strm_int ;
typedef int strm_array ;


 int STRM_TAG_ARRAY ;
 intptr_t STRM_VAL_MASK ;
 struct strm_array* malloc (int) ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;
 int strm_ary_null ;

strm_array
strm_ary_new(const strm_value* p, strm_int len)
{
  struct strm_array* ary;
  strm_value *buf;

  ary = malloc(sizeof(struct strm_array)+sizeof(strm_value)*len);
  buf = (strm_value*)&ary[1];

  if (p) {
    memcpy(buf, p, sizeof(strm_value)*len);
  }
  else {
    memset(buf, 0, sizeof(strm_value)*len);
  }
  ary->ptr = buf;
  ary->len = len;
  ary->ns = ((void*)0);
  ary->headers = strm_ary_null;
  return STRM_TAG_ARRAY | (strm_value)((intptr_t)ary & STRM_VAL_MASK);
}
