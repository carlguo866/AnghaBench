
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc {int dummy; } ;


 int put_ldisc (struct tty_ldisc*) ;

__attribute__((used)) static inline void tty_ldisc_put(struct tty_ldisc *ld)
{
 put_ldisc(ld);
}
