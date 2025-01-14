
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rgbSystemCredUser ;
typedef int rgbSystemCredMachine ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ GetExpression (char*) ;
 scalar_t__ KULL_M_WIN_MIN_BUILD_8 ;
 scalar_t__ NtBuildNumber ;
 scalar_t__ ReadMemory (scalar_t__,scalar_t__*,int,int *) ;
 int SHA_DIGEST_LENGTH ;
 int dprintf (char*) ;
 int kuhl_sekurlsa_dpapi_display_backupkey (scalar_t__,scalar_t__,scalar_t__,char*) ;
 int kull_m_string_dprintf_hex (scalar_t__*,int,int ) ;

void kuhl_sekurlsa_dpapi_backupkeys()
{
 ULONG_PTR g_fSystemCredsInitialized, g_rgbSystemCredMachine, g_rgbSystemCredUser;
 ULONG_PTR g_guidPreferredKey, g_pbPreferredKey, g_cbPreferredKey, g_guidW2KPreferredKey, g_pbW2KPreferredKey, g_cbW2KPreferredKey;
 BOOL isSystemCredsInitialized;
 BYTE rgbSystemCredMachine[SHA_DIGEST_LENGTH], rgbSystemCredUser[SHA_DIGEST_LENGTH];

 if(NtBuildNumber < KULL_M_WIN_MIN_BUILD_8)
 {
  g_guidPreferredKey = GetExpression("lsasrv!g_guidPreferredKey");
  g_pbPreferredKey = GetExpression("lsasrv!g_pbPreferredKey");
  g_cbPreferredKey = GetExpression("lsasrv!g_cbPreferredKey");
  g_guidW2KPreferredKey = GetExpression("lsasrv!g_guidW2KPreferredKey");
  g_pbW2KPreferredKey = GetExpression("lsasrv!g_pbW2KPreferredKey");
  g_cbW2KPreferredKey = GetExpression("lsasrv!g_cbW2KPreferredKey");

  g_fSystemCredsInitialized = GetExpression("lsasrv!g_fSystemCredsInitialized");
  g_rgbSystemCredMachine = GetExpression("lsasrv!g_rgbSystemCredMachine");
  g_rgbSystemCredUser = GetExpression("lsasrv!g_rgbSystemCredUser");
 }
 else
 {
  g_guidPreferredKey = GetExpression("dpapisrv!g_guidPreferredKey");
  g_pbPreferredKey = GetExpression("dpapisrv!g_pbPreferredKey");
  g_cbPreferredKey = GetExpression("dpapisrv!g_cbPreferredKey");
  g_guidW2KPreferredKey = GetExpression("dpapisrv!g_guidW2KPreferredKey");
  g_pbW2KPreferredKey = GetExpression("dpapisrv!g_pbW2KPreferredKey");
  g_cbW2KPreferredKey = GetExpression("dpapisrv!g_cbW2KPreferredKey");

  g_fSystemCredsInitialized = GetExpression("dpapisrv!g_fSystemCredsInitialized");
  g_rgbSystemCredMachine = GetExpression("dpapisrv!g_rgbSystemCredMachine");
  g_rgbSystemCredUser = GetExpression("dpapisrv!g_rgbSystemCredUser");
 }

 if((g_guidPreferredKey && g_pbPreferredKey && g_cbPreferredKey) || (g_guidW2KPreferredKey && g_pbW2KPreferredKey && g_cbW2KPreferredKey))
 {
  dprintf("\nDPAPI Backup keys\n=================\n");
  kuhl_sekurlsa_dpapi_display_backupkey(g_guidPreferredKey, g_pbPreferredKey, g_cbPreferredKey, "Current prefered key:       ");
  kuhl_sekurlsa_dpapi_display_backupkey(g_guidW2KPreferredKey, g_pbW2KPreferredKey, g_cbW2KPreferredKey, "Compatibility prefered key: ");
 }

 if(g_fSystemCredsInitialized && g_rgbSystemCredMachine && g_rgbSystemCredUser)
 {
  if(ReadMemory(g_fSystemCredsInitialized, &isSystemCredsInitialized, sizeof(BOOL), ((void*)0)))
  {
   dprintf("\nDPAPI System\n============\n");
   if(isSystemCredsInitialized)
   {
    if(
     ReadMemory(g_rgbSystemCredMachine, rgbSystemCredMachine, sizeof(rgbSystemCredMachine), ((void*)0)) &&
     ReadMemory(g_rgbSystemCredUser, rgbSystemCredUser, sizeof(rgbSystemCredUser), ((void*)0))
     )
    {
     dprintf("full: ");
     kull_m_string_dprintf_hex(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
     kull_m_string_dprintf_hex(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
     dprintf("\nm/u : ");
     kull_m_string_dprintf_hex(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
     dprintf(" / ");
     kull_m_string_dprintf_hex(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
     dprintf("\n");
    }
   }
  }
 }
}
