
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSV1_0_PRIMARY_HELPER ;


 scalar_t__ KULL_M_WIN_BUILD_10_1507 ;
 scalar_t__ KULL_M_WIN_BUILD_10_1511 ;
 scalar_t__ KULL_M_WIN_BUILD_10_1607 ;
 scalar_t__ NtBuildNumber ;
 int * msv1_0_primaryHelper ;

const MSV1_0_PRIMARY_HELPER * kuhl_m_sekurlsa_msv_helper()
{
 const MSV1_0_PRIMARY_HELPER * helper;
 if(NtBuildNumber < KULL_M_WIN_BUILD_10_1507)
  helper = &msv1_0_primaryHelper[0];
 else if(NtBuildNumber < KULL_M_WIN_BUILD_10_1511)
  helper = &msv1_0_primaryHelper[1];
 else if(NtBuildNumber < KULL_M_WIN_BUILD_10_1607)
  helper = &msv1_0_primaryHelper[2];
 else
  helper = &msv1_0_primaryHelper[3];
 return helper;
}
