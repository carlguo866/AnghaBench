
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int dummy; } ;


 struct mac_mls* SLOT (struct label*) ;
 int mls_copy_effective (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static void
mls_ipq_reassemble(struct ipq *q, struct label *qlabel, struct mbuf *m,
    struct label *mlabel)
{
 struct mac_mls *source, *dest;

 source = SLOT(qlabel);
 dest = SLOT(mlabel);


 mls_copy_effective(source, dest);
}
