
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int ISHEX (char) ;
 int TRUE ;
 int hex_value (int ) ;

__attribute__((used)) static bfd_boolean
getvalue (char **srcp, bfd_vma *valuep)
{
  char *src = *srcp;
  bfd_vma value = 0;
  unsigned int len;

  if (!ISHEX (*src))
    return FALSE;

  len = hex_value (*src++);
  if (len == 0)
    len = 16;
  while (len--)
    {
      if (!ISHEX (*src))
 return FALSE;
      value = value << 4 | hex_value (*src++);
    }

  *srcp = src;
  *valuep = value;
  return TRUE;
}
