
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 int SLOT (struct label*) ;
 int bzero (int ,int) ;

__attribute__((used)) static void
biba_sysvsem_cleanup(struct label *semalabel)
{

 bzero(SLOT(semalabel), sizeof(struct mac_biba));
}
