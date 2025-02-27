
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_key {int dummy; } ;


 scalar_t__ GET_GENERATION_NUMBER (scalar_t__) ;
 scalar_t__ GET_HASH_VALUE (scalar_t__) ;
 scalar_t__ TYPE_DIRENTRY ;
 scalar_t__ cpu_key_k_offset (struct cpu_key*) ;
 scalar_t__ cpu_key_k_type (struct cpu_key*) ;
 char* off_buf ;
 int sprintf (char*,char*,unsigned long long,...) ;

__attribute__((used)) static char *reiserfs_cpu_offset(struct cpu_key *key)
{
 if (cpu_key_k_type(key) == TYPE_DIRENTRY)
  sprintf(off_buf, "%llu(%llu)",
   (unsigned long long)
   GET_HASH_VALUE(cpu_key_k_offset(key)),
   (unsigned long long)
   GET_GENERATION_NUMBER(cpu_key_k_offset(key)));
 else
  sprintf(off_buf, "0x%Lx",
   (unsigned long long)cpu_key_k_offset(key));
 return off_buf;
}
