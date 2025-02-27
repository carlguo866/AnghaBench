
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int dbgmsg (int,char*,int ) ;
 int errmsg (int ,char*,char*) ;
 TYPE_1__ fw_header ;
 scalar_t__ required_arg (char,char*) ;
 scalar_t__ str2u32 (char*,int *) ;

int
parse_opt_flags(char ch, char *arg)
{
 if (required_arg(ch, arg)) {
  goto err_out;
 }

 if (str2u32(arg, &fw_header.flags) != 0) {
  errmsg(0,"invalid firmware flags: %s", arg);
  goto err_out;
 }

 dbgmsg(1, "firmware flags set to %X bytes", fw_header.flags);

 return 0;

err_out:
 return -1;
}
