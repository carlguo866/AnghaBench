
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {scalar_t__ state; int name; struct tty_struct* tty; } ;
typedef TYPE_1__ st_cpc_tty_area ;


 int CPC_TTY_DBG (char*,...) ;
 scalar_t__ CPC_TTY_ST_OPEN ;
 int ENODEV ;

__attribute__((used)) static int cpc_tty_chars_in_buffer(struct tty_struct *tty)
{
 st_cpc_tty_area *cpc_tty;

 if (!tty || !tty->driver_data ) {
  CPC_TTY_DBG("hdlcX-tty: no TTY to chars in buffer\n");
  return -ENODEV;
 }

 cpc_tty = (st_cpc_tty_area *) tty->driver_data;

 if ((cpc_tty->tty != tty) || (cpc_tty->state != CPC_TTY_ST_OPEN)) {
  CPC_TTY_DBG("%s: TTY is not opened\n",cpc_tty->name);
  return -ENODEV;
 }

 return(0);
}
