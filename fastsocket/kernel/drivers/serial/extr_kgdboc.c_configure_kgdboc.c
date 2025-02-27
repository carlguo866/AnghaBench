
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;


 int ENODEV ;
 scalar_t__* config ;
 int configured ;
 scalar_t__ isspace (scalar_t__) ;
 int kgdb_register_io_module (int *) ;
 struct tty_driver* kgdb_tty_driver ;
 int kgdb_tty_line ;
 int kgdboc_io_ops ;
 int kgdboc_option_setup (scalar_t__*) ;
 int strlen (scalar_t__*) ;
 struct tty_driver* tty_find_polling_driver (scalar_t__*,int*) ;

__attribute__((used)) static int configure_kgdboc(void)
{
 struct tty_driver *p;
 int tty_line = 0;
 int err;

 err = kgdboc_option_setup(config);
 if (err || !strlen(config) || isspace(config[0]))
  goto noconfig;

 err = -ENODEV;

 p = tty_find_polling_driver(config, &tty_line);
 if (!p)
  goto noconfig;

 kgdb_tty_driver = p;
 kgdb_tty_line = tty_line;

 err = kgdb_register_io_module(&kgdboc_io_ops);
 if (err)
  goto noconfig;

 configured = 1;

 return 0;

noconfig:
 config[0] = 0;
 configured = 0;

 return err;
}
