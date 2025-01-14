
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AC_ERR_ATA_BUS ;
 unsigned int AC_ERR_DEV ;
 unsigned int AC_ERR_HOST_BUS ;
 unsigned int AC_ERR_HSM ;
 unsigned int AC_ERR_INVALID ;
 unsigned int AC_ERR_MEDIA ;
 unsigned int AC_ERR_SYSTEM ;
 unsigned int AC_ERR_TIMEOUT ;

__attribute__((used)) static const char *ata_err_string(unsigned int err_mask)
{
 if (err_mask & AC_ERR_HOST_BUS)
  return "host bus error";
 if (err_mask & AC_ERR_ATA_BUS)
  return "ATA bus error";
 if (err_mask & AC_ERR_TIMEOUT)
  return "timeout";
 if (err_mask & AC_ERR_HSM)
  return "HSM violation";
 if (err_mask & AC_ERR_SYSTEM)
  return "internal error";
 if (err_mask & AC_ERR_MEDIA)
  return "media error";
 if (err_mask & AC_ERR_INVALID)
  return "invalid argument";
 if (err_mask & AC_ERR_DEV)
  return "device error";
 return "unknown error";
}
