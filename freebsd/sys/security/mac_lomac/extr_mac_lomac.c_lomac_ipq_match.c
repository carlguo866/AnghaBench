
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int lomac_equal_single (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static int
lomac_ipq_match(struct mbuf *m, struct label *mlabel, struct ipq *q,
    struct label *qlabel)
{
 struct mac_lomac *a, *b;

 a = SLOT(qlabel);
 b = SLOT(mlabel);

 return (lomac_equal_single(a, b));
}
