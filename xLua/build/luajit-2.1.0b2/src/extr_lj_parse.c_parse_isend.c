
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexToken ;
__attribute__((used)) static int parse_isend(LexToken tok)
{
  switch (tok) {
  case 132: case 131: case 130: case 128: case 129:
    return 1;
  default:
    return 0;
  }
}
