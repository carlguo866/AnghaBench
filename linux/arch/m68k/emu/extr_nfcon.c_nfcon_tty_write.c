
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int nfputs (unsigned char const*,int) ;

__attribute__((used)) static int nfcon_tty_write(struct tty_struct *tty, const unsigned char *buf,
      int count)
{
 nfputs(buf, count);
 return count;
}
