
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum aarch64_opnd_qualifier { ____Placeholder_aarch64_opnd_qualifier } aarch64_opnd_qualifier ;
typedef int aarch64_insn ;


 int AARCH64_OPND_QLF_W ;
 int aarch64_get_qualifier_standard_value (int) ;
 int assert (int) ;

__attribute__((used)) static inline enum aarch64_opnd_qualifier
get_greg_qualifier_from_value (aarch64_insn value)
{
  enum aarch64_opnd_qualifier qualifier = AARCH64_OPND_QLF_W + value;
  assert (value <= 0x1
   && aarch64_get_qualifier_standard_value (qualifier) == value);
  return qualifier;
}
