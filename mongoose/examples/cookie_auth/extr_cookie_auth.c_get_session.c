
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct session {scalar_t__ id; int last_used; } ;
struct mg_str {int dummy; } ;
struct http_message {int dummy; } ;
typedef int ssid_buf ;


 int NUM_SESSIONS ;
 int SESSION_COOKIE_NAME ;
 int free (char*) ;
 struct mg_str* mg_get_http_header (struct http_message*,char*) ;
 int mg_http_parse_header2 (struct mg_str*,int ,char**,int) ;
 int mg_time () ;
 struct session* s_sessions ;
 scalar_t__ strtoull (char*,int *,int) ;

__attribute__((used)) static struct session *get_session(struct http_message *hm) {
  char ssid_buf[21];
  char *ssid = ssid_buf;
  struct session *ret = ((void*)0);
  struct mg_str *cookie_header = mg_get_http_header(hm, "cookie");
  if (cookie_header == ((void*)0)) goto clean;
  if (!mg_http_parse_header2(cookie_header, SESSION_COOKIE_NAME, &ssid,
                             sizeof(ssid_buf))) {
    goto clean;
  }
  uint64_t sid = strtoull(ssid, ((void*)0), 16);
  int i;
  for (i = 0; i < NUM_SESSIONS; i++) {
    if (s_sessions[i].id == sid) {
      s_sessions[i].last_used = mg_time();
      ret = &s_sessions[i];
      goto clean;
    }
  }

clean:
  if (ssid != ssid_buf) {
    free(ssid);
  }
  return ret;
}
