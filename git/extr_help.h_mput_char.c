
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;

__attribute__((used)) static inline void mput_char(char c, unsigned int num)
{
 while (num--)
  putchar(c);
}
