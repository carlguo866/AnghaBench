
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int um_early_printk (char const*,unsigned int) ;

__attribute__((used)) static void early_console_write(struct console *con, const char *s, unsigned int n)
{
 um_early_printk(s, n);
}
