
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maintenance_do_deprecate (char*,int) ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
maintenance_deprecate (char *args, int from_tty)
{
  if (args == ((void*)0) || *args == '\0')
    {
      printf_unfiltered ("\"maintenance deprecate\" takes an argument, \nthe command you want to deprecate, and optionally the replacement command \nenclosed in quotes.\n");


    }

  maintenance_do_deprecate (args, 1);

}
