
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dpp_akm { ____Placeholder_dpp_akm } dpp_akm ;


 int DPP_AKM_DPP ;
 int DPP_AKM_PSK ;
 int DPP_AKM_PSK_SAE ;
 int DPP_AKM_PSK_SAE_DPP ;
 int DPP_AKM_SAE ;
 int DPP_AKM_SAE_DPP ;
 int DPP_AKM_UNKNOWN ;
 scalar_t__ os_strcmp (char const*,char*) ;

__attribute__((used)) static enum dpp_akm dpp_akm_from_str(const char *akm)
{
 if (os_strcmp(akm, "psk") == 0)
  return DPP_AKM_PSK;
 if (os_strcmp(akm, "sae") == 0)
  return DPP_AKM_SAE;
 if (os_strcmp(akm, "psk+sae") == 0)
  return DPP_AKM_PSK_SAE;
 if (os_strcmp(akm, "dpp") == 0)
  return DPP_AKM_DPP;
 if (os_strcmp(akm, "dpp+sae") == 0)
  return DPP_AKM_SAE_DPP;
 if (os_strcmp(akm, "dpp+psk+sae") == 0)
  return DPP_AKM_PSK_SAE_DPP;
 return DPP_AKM_UNKNOWN;
}
