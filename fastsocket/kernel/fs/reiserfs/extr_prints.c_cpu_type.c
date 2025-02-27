
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_key {int dummy; } ;


 scalar_t__ TYPE_DIRECT ;
 scalar_t__ TYPE_DIRENTRY ;
 scalar_t__ TYPE_INDIRECT ;
 scalar_t__ TYPE_STAT_DATA ;
 scalar_t__ cpu_key_k_type (struct cpu_key*) ;

__attribute__((used)) static char *cpu_type(struct cpu_key *key)
{
 if (cpu_key_k_type(key) == TYPE_STAT_DATA)
  return "SD";
 if (cpu_key_k_type(key) == TYPE_DIRENTRY)
  return "DIR";
 if (cpu_key_k_type(key) == TYPE_DIRECT)
  return "DIRECT";
 if (cpu_key_k_type(key) == TYPE_INDIRECT)
  return "IND";
 return "UNKNOWN";
}
