
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_pm {int tx_num_pg; int tx_pg_sz; int rx_num_pg; int rx_pg_sz; int pm_total; } ;


 int CHELSIO_GET_PM ;
 int CHELSIO_SET_PM ;
 scalar_t__ doit (char const*,int ,struct ch_pm*) ;
 int err (int,char*) ;
 scalar_t__ get_pm_page_spec (char*,int*,int*) ;
 int printf (char*,int,int,int,int,int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
conf_pm(int argc, char *argv[], int start_arg, const char *iff_name)
{
 struct ch_pm pm;

 if (argc == start_arg) {
  if (doit(iff_name, CHELSIO_GET_PM, &pm) < 0)
   err(1, "read pm config");
  printf("%ux%uKB TX pages, %ux%uKB RX pages, %uKB total memory\n",
         pm.tx_num_pg, pm.tx_pg_sz >> 10, pm.rx_num_pg,
         pm.rx_pg_sz >> 10, pm.pm_total >> 10);
  return 0;
 }

 if (argc != start_arg + 2) return -1;

 if (get_pm_page_spec(argv[start_arg], &pm.tx_pg_sz, &pm.tx_num_pg)) {
  warnx("bad parameter \"%s\"", argv[start_arg]);
  return -1;
 }
 if (get_pm_page_spec(argv[start_arg + 1], &pm.rx_pg_sz,
        &pm.rx_num_pg)) {
  warnx("bad parameter \"%s\"", argv[start_arg + 1]);
  return -1;
 }
 if (doit(iff_name, CHELSIO_SET_PM, &pm) < 0)
  err(1, "pm config");
 return 0;
}
