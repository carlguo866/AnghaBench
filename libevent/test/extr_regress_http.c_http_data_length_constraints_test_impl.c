
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
typedef struct evhttp_request evhttp_connection ;
struct evhttp {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_CON_READ_ON_WRITE_ERROR ;
 int EVHTTP_REQ_GET ;
 int EVHTTP_REQ_POST ;
 int TT_BLATHER (char*) ;
 int evbuffer_add_printf (int ,char*,char*) ;
 int event_base_dispatch (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_request* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_request*) ;
 int evhttp_connection_set_flags (struct evhttp_request*,int ) ;
 int evhttp_connection_set_local_address (struct evhttp_request*,char*) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_request*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_buffer (struct evhttp_request*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (void (*) (struct evhttp_request*,void*),int ) ;
 int evhttp_set_max_body_size (struct evhttp*,size_t const) ;
 int evhttp_set_max_headers_size (struct evhttp*,size_t const) ;
 int free (char*) ;
 void http_data_length_constraints_test_done (struct evhttp_request*,void*) ;
 void http_dispatcher_test_done (struct evhttp_request*,void*) ;
 void http_expectation_failed_done (struct evhttp_request*,void*) ;
 void http_failed_request_done (struct evhttp_request*,void*) ;
 void http_large_entity_test_done (struct evhttp_request*,void*) ;
 struct evhttp* http_setup (int *,int ,int ) ;
 char* malloc (size_t const) ;
 int memset (char*,char,size_t const) ;
 int test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (int) ;

__attribute__((used)) static void
http_data_length_constraints_test_impl(void *arg, int read_on_write_error)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 char *long_str = ((void*)0);
 const size_t continue_size = 1<<20;
 const size_t size = (1<<20) * 3;
 void (*cb)(struct evhttp_request *, void *);
 struct evhttp *http = http_setup(&port, data->base, 0);

 test_ok = 0;
 cb = http_failed_request_done;
 if (read_on_write_error)
  cb = http_data_length_constraints_test_done;

 tt_assert(continue_size < size);

 long_str = malloc(size);
 memset(long_str, 'a', size);
 long_str[size - 1] = '\0';

 TT_BLATHER(("Creating connection to :%i", port));
 evcon = evhttp_connection_base_new(data->base, ((void*)0), "127.0.0.1", port);
 tt_assert(evcon);

 if (read_on_write_error)
  tt_assert(!evhttp_connection_set_flags(evcon, EVHTTP_CON_READ_ON_WRITE_ERROR));

 evhttp_connection_set_local_address(evcon, "127.0.0.1");

 evhttp_set_max_headers_size(http, size - 1);
 TT_BLATHER(("Set max header size %zu", size - 1));

 req = evhttp_request_new(http_data_length_constraints_test_done, data->base);
 tt_assert(req);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req), "Longheader", long_str);
 TT_BLATHER(("GET /?arg=val"));
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/?arg=val") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 req = evhttp_request_new(http_data_length_constraints_test_done, data->base);
 tt_assert(req);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");

 TT_BLATHER(("GET %s", long_str));
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, long_str) == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 evhttp_set_max_body_size(http, size - 2);
 TT_BLATHER(("Set body header size %zu", size - 2));

 if (read_on_write_error)
  cb = http_large_entity_test_done;
 req = evhttp_request_new(cb, data->base);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evbuffer_add_printf(evhttp_request_get_output_buffer(req), "%s", long_str);
 TT_BLATHER(("POST /"));
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 req = evhttp_request_new(http_large_entity_test_done, data->base);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req), "Expect", "100-continue");
 evbuffer_add_printf(evhttp_request_get_output_buffer(req), "%s", long_str);
 TT_BLATHER(("POST / (Expect: 100-continue, http_large_entity_test_done)"));
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 long_str[continue_size] = '\0';

 req = evhttp_request_new(http_dispatcher_test_done, data->base);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req), "Expect", "100-continue");
 evbuffer_add_printf(evhttp_request_get_output_buffer(req), "%s", long_str);
 TT_BLATHER(("POST / (Expect: 100-continue, http_dispatcher_test_done)"));
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 if (read_on_write_error)
  cb = http_expectation_failed_done;
 req = evhttp_request_new(cb, data->base);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req), "Expect", "101-continue");
 evbuffer_add_printf(evhttp_request_get_output_buffer(req), "%s", long_str);
 TT_BLATHER(("POST / (Expect: 101-continue)"));
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 test_ok = 1;
 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
 if (long_str)
  free(long_str);
}
