
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_hooks {int dummy; } ;
struct _citrus_iconv_std_encoding {int se_ps; int se_handle; } ;
typedef int _index_t ;
typedef int _csid_t ;


 int _stdenc_mbtocs (int ,int *,int *,char**,size_t,int ,size_t*,struct iconv_hooks*) ;

__attribute__((used)) static __inline int
mbtocsx(struct _citrus_iconv_std_encoding *se,
    _csid_t *csid, _index_t *idx, char **s, size_t n, size_t *nresult,
    struct iconv_hooks *hooks)
{

 return (_stdenc_mbtocs(se->se_handle, csid, idx, s, n, se->se_ps,
         nresult, hooks));
}
