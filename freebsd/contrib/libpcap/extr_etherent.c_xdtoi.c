
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 scalar_t__ isdigit (char) ;
 scalar_t__ islower (char) ;

__attribute__((used)) static inline u_char
xdtoi(u_char c)
{
 if (isdigit(c))
  return (u_char)(c - '0');
 else if (islower(c))
  return (u_char)(c - 'a' + 10);
 else
  return (u_char)(c - 'A' + 10);
}
