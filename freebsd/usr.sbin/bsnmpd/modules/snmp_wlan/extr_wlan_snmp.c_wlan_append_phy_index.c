
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint ;
struct asn_oid {int len; int* subs; } ;


 int strlen (char*) ;

__attribute__((used)) static void
wlan_append_phy_index(struct asn_oid *oid, uint sub, char *wname, uint32_t phy)
{
 uint32_t i;

 oid->len = sub + strlen(wname) + 2;
 oid->subs[sub] = strlen(wname);
 for (i = 1; i <= strlen(wname); i++)
  oid->subs[sub + i] = wname[i - 1];
 oid->subs[sub + strlen(wname) + 1] = phy;
}
