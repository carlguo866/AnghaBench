
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sst_dirlen; size_t sst_ss; } ;
typedef TYPE_1__ cdf_stream_t ;
struct TYPE_8__ {scalar_t__ h_min_size_standard_stream; } ;
typedef TYPE_2__ cdf_header_t ;


 size_t CDF_SEC_SIZE (TYPE_2__ const*) ;
 size_t CDF_SHORT_SEC_SIZE (TYPE_2__ const*) ;
 int assert (int) ;

__attribute__((used)) static size_t
cdf_check_stream(const cdf_stream_t *sst, const cdf_header_t *h)
{
 size_t ss = sst->sst_dirlen < h->h_min_size_standard_stream ?
     CDF_SHORT_SEC_SIZE(h) : CDF_SEC_SIZE(h);
 assert(ss == sst->sst_ss);
 return sst->sst_ss;
}
