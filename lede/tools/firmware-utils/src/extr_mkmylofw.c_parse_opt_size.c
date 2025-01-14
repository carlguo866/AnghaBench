
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbgmsg (int,char*,int ) ;
 int errmsg (int ,char*,char*) ;
 int flash_size ;
 scalar_t__ required_arg (char,char*) ;
 scalar_t__ str2u32 (char*,int *) ;

int
parse_opt_size(char ch, char *arg)
{
 if (required_arg(ch, arg)) {
  goto err_out;
 }

 if (str2u32(arg, &flash_size) != 0) {
  errmsg(0,"invalid flash size: %s", arg);
  goto err_out;
 }

 dbgmsg(1, "flash size set to %d bytes", flash_size);

 return 0;

err_out:
 return -1;
}
