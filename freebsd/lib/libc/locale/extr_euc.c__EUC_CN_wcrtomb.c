
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;


 int SS2 ;
 size_t _EUC_wcrtomb_impl (char*,int ,int *,int ,int,int ,int ) ;

__attribute__((used)) static size_t
_EUC_CN_wcrtomb(char * __restrict s, wchar_t wc,
    mbstate_t * __restrict ps)
{
 return (_EUC_wcrtomb_impl(s, wc, ps, SS2, 4, 0, 0));
}
