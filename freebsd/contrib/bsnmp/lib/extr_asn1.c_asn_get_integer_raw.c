
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn_buf {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int asn_len_t ;


 int ASN_ERR_BADLEN ;
 int ASN_ERR_OK ;
 int ASN_ERR_RANGE ;
 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;
 int asn_get_real_integer (struct asn_buf*,int,scalar_t__*) ;

enum asn_err
asn_get_integer_raw(struct asn_buf *b, asn_len_t len, int32_t *vp)
{
 int64_t val;
 enum asn_err ret;

 if ((ret = asn_get_real_integer(b, len, &val)) == ASN_ERR_OK) {
  if (len > 4)
   ret = ASN_ERR_BADLEN;
  else if (val > INT32_MAX || val < INT32_MIN)

   ret = ASN_ERR_RANGE;
  *vp = (int32_t)val;
 }
 return (ret);
}
