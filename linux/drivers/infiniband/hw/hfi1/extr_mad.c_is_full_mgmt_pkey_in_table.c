
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {scalar_t__* pkeys; } ;
struct hfi1_ibport {int dummy; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ FULL_MGMT_P_KEY ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;

__attribute__((used)) static int is_full_mgmt_pkey_in_table(struct hfi1_ibport *ibp)
{
 unsigned int i;
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);

 for (i = 0; i < ARRAY_SIZE(ppd->pkeys); ++i)
  if (ppd->pkeys[i] == FULL_MGMT_P_KEY)
   return 1;

 return 0;
}
