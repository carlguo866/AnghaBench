
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int paddle_write (int,unsigned char,unsigned char) ;

void paddle_2_write(unsigned char data, unsigned char mask)
{
  paddle_write(1, data, mask);
}
