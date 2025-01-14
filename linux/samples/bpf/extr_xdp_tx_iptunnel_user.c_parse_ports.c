
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long MAX_IPTNL_ENTRIES ;
 int fprintf (int ,char*,char const*,...) ;
 char* optarg ;
 int stderr ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int parse_ports(const char *port_str, int *min_port, int *max_port)
{
 char *end;
 long tmp_min_port;
 long tmp_max_port;

 tmp_min_port = strtol(optarg, &end, 10);
 if (tmp_min_port < 1 || tmp_min_port > 65535) {
  fprintf(stderr, "Invalid port(s):%s\n", optarg);
  return 1;
 }

 if (*end == '-') {
  end++;
  tmp_max_port = strtol(end, ((void*)0), 10);
  if (tmp_max_port < 1 || tmp_max_port > 65535) {
   fprintf(stderr, "Invalid port(s):%s\n", optarg);
   return 1;
  }
 } else {
  tmp_max_port = tmp_min_port;
 }

 if (tmp_min_port > tmp_max_port) {
  fprintf(stderr, "Invalid port(s):%s\n", optarg);
  return 1;
 }

 if (tmp_max_port - tmp_min_port + 1 > MAX_IPTNL_ENTRIES) {
  fprintf(stderr, "Port range (%s) is larger than %u\n",
   port_str, MAX_IPTNL_ENTRIES);
  return 1;
 }
 *min_port = tmp_min_port;
 *max_port = tmp_max_port;

 return 0;
}
