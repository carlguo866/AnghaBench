
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_section {int flags; } ;


 int SEC_CODE ;
 int SEC_DATA ;
 int SEC_DEBUGGING ;
 int SEC_HAS_CONTENTS ;
 int SEC_READONLY ;
 int SEC_SMALL_DATA ;

__attribute__((used)) static char
decode_section_type (const struct bfd_section *section)
{
  if (section->flags & SEC_CODE)
    return 't';
  if (section->flags & SEC_DATA)
    {
      if (section->flags & SEC_READONLY)
 return 'r';
      else if (section->flags & SEC_SMALL_DATA)
 return 'g';
      else
 return 'd';
    }
  if ((section->flags & SEC_HAS_CONTENTS) == 0)
    {
      if (section->flags & SEC_SMALL_DATA)
 return 's';
      else
 return 'b';
    }
  if (section->flags & SEC_DEBUGGING)
    return 'N';
  if ((section->flags & SEC_HAS_CONTENTS) && (section->flags & SEC_READONLY))
    return 'n';

  return '?';
}
