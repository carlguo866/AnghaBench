
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef struct mbuf* mbuf_t ;
typedef int mbuf_how_t ;
typedef scalar_t__ errno_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOBUFS ;
 scalar_t__ ENOMEM ;
 struct mbuf* m_allocpacket_internal (unsigned int*,size_t,unsigned int*,int ,int,int ) ;

errno_t
mbuf_allocpacket_list(unsigned int numpkts, mbuf_how_t how, size_t packetlen,
    unsigned int *maxchunks, mbuf_t *mbuf)
{
 errno_t error;
 struct mbuf *m;
 unsigned int numchunks = maxchunks ? *maxchunks : 0;

 if (numpkts == 0) {
  error = EINVAL;
  goto out;
 }
 if (packetlen == 0) {
  error = EINVAL;
  goto out;
 }
 m = m_allocpacket_internal(&numpkts, packetlen,
     maxchunks ? &numchunks : ((void*)0), how, 1, 0);
 if (m == 0) {
  if (maxchunks && *maxchunks && numchunks > *maxchunks)
   error = ENOBUFS;
  else
   error = ENOMEM;
 } else {
  if (maxchunks)
   *maxchunks = numchunks;
  error = 0;
  *mbuf = m;
 }
out:
 return (error);
}
