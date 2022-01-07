
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sid {scalar_t__ revision; scalar_t__* authority; int num_subauth; scalar_t__* sub_auth; } ;


 int NUM_AUTHS ;
 scalar_t__ le32_to_cpu (scalar_t__) ;

__attribute__((used)) static int
compare_sids(const struct cifs_sid *ctsid, const struct cifs_sid *cwsid)
{
 int i;
 int num_subauth, num_sat, num_saw;

 if ((!ctsid) || (!cwsid))
  return 1;


 if (ctsid->revision != cwsid->revision) {
  if (ctsid->revision > cwsid->revision)
   return 1;
  else
   return -1;
 }


 for (i = 0; i < NUM_AUTHS; ++i) {
  if (ctsid->authority[i] != cwsid->authority[i]) {
   if (ctsid->authority[i] > cwsid->authority[i])
    return 1;
   else
    return -1;
  }
 }


 num_sat = ctsid->num_subauth;
 num_saw = cwsid->num_subauth;
 num_subauth = num_sat < num_saw ? num_sat : num_saw;
 if (num_subauth) {
  for (i = 0; i < num_subauth; ++i) {
   if (ctsid->sub_auth[i] != cwsid->sub_auth[i]) {
    if (le32_to_cpu(ctsid->sub_auth[i]) >
     le32_to_cpu(cwsid->sub_auth[i]))
     return 1;
    else
     return -1;
   }
  }
 }

 return 0;
}
