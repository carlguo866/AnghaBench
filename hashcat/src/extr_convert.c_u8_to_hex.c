
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



void u8_to_hex (const u8 v, u8 hex[2])
{
  const u8 tbl[0x10] =
  {
    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
    'a', 'b', 'c', 'd', 'e', 'f',
  };

  hex[1] = tbl[v >> 0 & 15];
  hex[0] = tbl[v >> 4 & 15];
}
