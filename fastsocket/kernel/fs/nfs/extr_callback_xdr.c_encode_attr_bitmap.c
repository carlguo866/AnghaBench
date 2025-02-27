
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef scalar_t__ __be32 ;


 int const CB_SUPPORTED_ATTR0 ;
 int const CB_SUPPORTED_ATTR1 ;
 int NFS4ERR_RESOURCE ;
 scalar_t__ htonl (int const) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__* xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 encode_attr_bitmap(struct xdr_stream *xdr, const uint32_t *bitmap, __be32 **savep)
{
 __be32 bm[2];
 __be32 *p;

 bm[0] = htonl(bitmap[0] & CB_SUPPORTED_ATTR0);
 bm[1] = htonl(bitmap[1] & CB_SUPPORTED_ATTR1);
 if (bm[1] != 0) {
  p = xdr_reserve_space(xdr, 16);
  if (unlikely(p == ((void*)0)))
   return htonl(NFS4ERR_RESOURCE);
  *p++ = htonl(2);
  *p++ = bm[0];
  *p++ = bm[1];
 } else if (bm[0] != 0) {
  p = xdr_reserve_space(xdr, 12);
  if (unlikely(p == ((void*)0)))
   return htonl(NFS4ERR_RESOURCE);
  *p++ = htonl(1);
  *p++ = bm[0];
 } else {
  p = xdr_reserve_space(xdr, 8);
  if (unlikely(p == ((void*)0)))
   return htonl(NFS4ERR_RESOURCE);
  *p++ = htonl(0);
 }
 *savep = p;
 return 0;
}
