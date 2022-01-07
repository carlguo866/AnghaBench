
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {scalar_t__ len; int p; } ;
struct mg_connection {int dummy; } ;
typedef int bhead ;
typedef int bbody ;


 int MG_FREE (char*) ;
 int mg_asprintf (char**,int,char*,int,int ,...) ;
 int mg_send (struct mg_connection*,char*,int) ;
 int mg_send_response_line (struct mg_connection*,int,char*) ;

void mg_http_send_redirect(struct mg_connection *nc, int status_code,
                           const struct mg_str location,
                           const struct mg_str extra_headers) {
  char bbody[100], *pbody = bbody;
  int bl = mg_asprintf(&pbody, sizeof(bbody),
                       "<p>Moved <a href='%.*s'>here</a>.\r\n",
                       (int) location.len, location.p);
  char bhead[150], *phead = bhead;
  mg_asprintf(&phead, sizeof(bhead),
              "Location: %.*s\r\n"
              "Content-Type: text/html\r\n"
              "Content-Length: %d\r\n"
              "Cache-Control: no-cache\r\n"
              "%.*s%s",
              (int) location.len, location.p, bl, (int) extra_headers.len,
              extra_headers.p, (extra_headers.len > 0 ? "\r\n" : ""));
  mg_send_response_line(nc, status_code, phead);
  if (phead != bhead) MG_FREE(phead);
  mg_send(nc, pbody, bl);
  if (pbody != bbody) MG_FREE(pbody);
}
