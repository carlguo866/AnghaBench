
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int emergency_sync () ;

__attribute__((used)) static void sysrq_handle_sync(int key, struct tty_struct *tty)
{
 emergency_sync();
}
