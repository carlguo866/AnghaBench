
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
isdelim(int ch)
{

 if (ch == '{')
  return '}';
 else if (ch == '(')
  return ')';
 return '\0';
}
