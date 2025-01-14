
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_BIT ;
 int SET_PORT (int) ;
 int * calloc (int,int) ;
 int digittoint (char const) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ isdigit (char const) ;
 int * ports ;

__attribute__((used)) static void
parse_ports(const char *portspec)
{
 const char *p, *q;
 int port, end;

 if (ports == ((void*)0))
  if ((ports = calloc(65536 / INT_BIT, sizeof(int))) == ((void*)0))
   err(1, "calloc()");
 p = portspec;
 while (*p != '\0') {
  if (!isdigit(*p))
   errx(1, "syntax error in port range");
  for (q = p; *q != '\0' && isdigit(*q); ++q)
                 ;
  for (port = 0; p < q; ++p)
   port = port * 10 + digittoint(*p);
  if (port < 0 || port > 65535)
   errx(1, "invalid port number");
  SET_PORT(port);
  switch (*p) {
  case '-':
   ++p;
   break;
  case ',':
   ++p;

  case '\0':
  default:
   continue;
  }
  for (q = p; *q != '\0' && isdigit(*q); ++q)
                 ;
  for (end = 0; p < q; ++p)
   end = end * 10 + digittoint(*p);
  if (end < port || end > 65535)
   errx(1, "invalid port number");
  while (port++ < end)
   SET_PORT(port);
  if (*p == ',')
   ++p;
 }
}
