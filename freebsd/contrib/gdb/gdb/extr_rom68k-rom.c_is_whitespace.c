
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_whitespace (int c)
{
  return (c == ' '
          || c == '\r'
          || c == '\n'
          || c == '\t'
          || c == '\f');
}
