
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int event_base_dispatch (int ) ;
 struct evhttp_connection* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_free (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,int *) ;
 int evhttp_request_own (struct evhttp_request*) ;
 int exit_base ;
 int http_request_no_action_done ;
 struct evhttp* http_setup (int *,int ,int ) ;
 int test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
http_request_own_test(void *arg)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 struct evhttp *http = http_setup(&port, data->base, 0);

 test_ok = 0;
 exit_base = data->base;

 evhttp_free(http);

 evcon = evhttp_connection_base_new(data->base, ((void*)0), "127.0.0.1", port);
 tt_assert(evcon);

 req = evhttp_request_new(http_request_no_action_done, ((void*)0));

 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 evhttp_request_own(req);

 event_base_dispatch(data->base);

 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (req)
  evhttp_request_free(req);

 test_ok = 1;
}
