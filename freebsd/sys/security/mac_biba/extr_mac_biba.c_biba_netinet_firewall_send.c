
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 int MAC_BIBA_TYPE_EQUAL ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_set_effective (struct mac_biba*,int ,int ,int *) ;

__attribute__((used)) static void
biba_netinet_firewall_send(struct mbuf *m, struct label *mlabel)
{
 struct mac_biba *dest;

 dest = SLOT(mlabel);


 biba_set_effective(dest, MAC_BIBA_TYPE_EQUAL, 0, ((void*)0));
}
