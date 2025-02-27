
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void
write_indent (int indent)
{
  for (; indent > 8; indent -= 8)
    printf ("\t");

  for (; indent; indent--)
    printf (" ");
}
