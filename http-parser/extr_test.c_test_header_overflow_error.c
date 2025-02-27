
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 scalar_t__ HPE_HEADER_OVERFLOW ;
 scalar_t__ HTTP_PARSER_ERRNO (int *) ;
 int HTTP_REQUEST ;
 int HTTP_RESPONSE ;
 int abort () ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 size_t http_parser_execute (int *,int *,char const*,size_t) ;
 int http_parser_init (int *,int ) ;
 int settings_null ;
 int stderr ;
 size_t strlen (char const*) ;

void
test_header_overflow_error (int req)
{
  http_parser parser;
  http_parser_init(&parser, req ? HTTP_REQUEST : HTTP_RESPONSE);
  size_t parsed;
  const char *buf;
  buf = req ? "GET / HTTP/1.1\r\n" : "HTTP/1.0 200 OK\r\n";
  parsed = http_parser_execute(&parser, &settings_null, buf, strlen(buf));
  assert(parsed == strlen(buf));

  buf = "header-key: header-value\r\n";
  size_t buflen = strlen(buf);

  int i;
  for (i = 0; i < 10000; i++) {
    parsed = http_parser_execute(&parser, &settings_null, buf, buflen);
    if (parsed != buflen) {

      assert(HTTP_PARSER_ERRNO(&parser) == HPE_HEADER_OVERFLOW);
      return;
    }
  }

  fprintf(stderr, "\n*** Error expected but none in header overflow test ***\n");
  abort();
}
